package §]C§
{
   import §!J§.§[&§;
   import §%!$§.§=m§;
   import §&! §.§3!§;
   import §-!7§.§@m§;
   import §-!7§.§]!$§;
   import §-!7§.§^!1§;
   import §5p§.§?M§;
   import §9N§.§9!%§;
   import §9N§.§;c§;
   import §<!+§.§[!!§;
   import §@,§.§"j§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §5z§ extends §5_§
   {
      
      public static const §>#§:int = 0;
      
      public static const §58§:int = 1;
      
      public static const §8!@§:int = 2;
      
      public static const §7!%§:int = 3;
      
      public static const §,g§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §=g§:int = 7;
      
      private static const § !A§:Number = 0.001;
      
      public static const §'!0§:Number = 2000;
      
      public static const §8&§:Number = 2500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>#§ = 0;
            loop0:
            while(true)
            {
               §58§ = 1;
               addr128:
               while(true)
               {
                  §8!@§ = 2;
                  continue loop0;
               }
            }
         }
         §§goto(addr44);
      }
      
      public var §0!0§:int = 0;
      
      private var §-l§:int = 0;
      
      public var §2!%§:Number;
      
      protected var §11§:Number = 0;
      
      protected var §%A§:Boolean = false;
      
      public var §7K§:Number = 0;
      
      protected var §7!5§:Boolean;
      
      private var §!!#§:Number = 0;
      
      private var §6W§:Number = 0;
      
      protected var §@I§:Boolean = true;
      
      protected var §@t§:§3!§;
      
      public function §5z§(param1:§9!%§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§@t§ = new §3!§();
            do
            {
               super(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
            while(true)
            {
               this.§@t§.§6!Y§(0);
               loop1:
               while(true)
               {
                  this.§0!0§ = -1;
                  loop2:
                  while(true)
                  {
                     this.§-l§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§11§ = 0;
                        while(true)
                        {
                           this.§%A§ = false;
                           addr93:
                           while(!_loc2_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                           addr59:
                           if(_loc2_)
                           {
                              continue;
                           }
                           §8@§.objects.setGroundTextureEnabled(true);
                           addr71:
                           if(!_loc2_)
                           {
                              addr35:
                              if(_loc1_ || this)
                              {
                                 if(_loc1_)
                                 {
                                    return;
                                    addr86:
                                 }
                                 while(!_loc2_)
                                 {
                                    this.§2!%§ = §'!0§;
                                    while(true)
                                    {
                                       §4!Q§(true);
                                       loop8:
                                       while(true)
                                       {
                                          §8@§.objects.setDamageEnabled(true);
                                          addr50:
                                          while(true)
                                          {
                                             if(_loc2_ && this)
                                             {
                                                continue loop8;
                                             }
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             §§goto(addr59);
                                             §§goto(addr71);
                                          }
                                          §§goto(addr93);
                                       }
                                       §§goto(addr35);
                                    }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr50);
                        }
                     }
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               this.§1!S§(§>#§);
               §§goto(addr86);
            }
         }
         §§goto(addr81);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            param1 = §8@§.update(param1,true);
            while(true)
            {
               this.§-!3§(param1);
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§8!S§(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(_loc2_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §-!3§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§-l§ != 0)
            {
               if(_loc3_ || param1)
               {
                  §8@§.camera.adjustManualScale(this.§-l§ > 0,param1 * § !A§);
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
         if(!(_loc1_ && this))
         {
            §8@§.clearLevel();
            while(true)
            {
               removeEventListeners();
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     this.§0!0§ = -1;
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.addEventListeners();
         }
      }
      
      public function §]!1§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(§8@§.camera.mCurrentCameraSliderLocation >= §?M§.§#Q§)
            {
               while(!§8@§.objects.isWorldAtSleep())
               {
                  if(_loc2_)
                  {
                     §§goto(addr62);
                  }
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_)
                     {
                        addr72:
                        break;
                     }
                     addr90:
                     return false;
                  }
               }
               §§push(true);
               if(!(_loc2_ || _loc2_))
               {
                  addr62:
                  return false;
               }
               if(!(_loc1_ && _loc1_))
               {
                  return §§pop();
               }
               §§goto(addr90);
            }
            §§goto(addr90);
         }
         §§goto(addr72);
      }
      
      public function §=!3§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§?M§ = §8@§.camera;
         if(!(_loc4_ && param1))
         {
            §§push(_loc2_.§'F§);
            loop0:
            while(true)
            {
               §§push(0);
               addr101:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     return;
                  }
                  addr28:
                  if(_loc3_ || _loc2_)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§'F§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§'F§ = §§pop();
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §1!S§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§=t§(false));
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || param2)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop17:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc4_)
                           {
                              §§push(!§§pop());
                           }
                           if(!_loc3_)
                           {
                              loop0:
                              while(!§§pop())
                              {
                                 loop1:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§>#§);
                                       loop3:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(param1);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(§58§);
                                             loop5:
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(param1);
                                                loop6:
                                                while(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(§8!@§);
                                                   loop7:
                                                   for(; §§pop() != §§pop(); if(_loc3_ && this)
                                                   {
                                                      continue;
                                                   },if(_loc3_ && param1)
                                                   {
                                                      continue loop5;
                                                   },if(§§pop() != §§pop())
                                                   {
                                                      §§goto(addr124);
                                                   },§§goto(addr276))
                                                   {
                                                      §§push(param1);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(§7!%§);
                                                         loop9:
                                                         while(§§pop() != §§pop())
                                                         {
                                                            §§push(param1);
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(§,g§);
                                                               loop11:
                                                               while(§§pop() != §§pop())
                                                               {
                                                                  §§push(param1);
                                                                  loop12:
                                                                  for(; !_loc3_; if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     continue loop8;
                                                                  })
                                                                  {
                                                                     §§push(LEVEL_STATE_VICTORY2_END);
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(param1);
                                                                           while(_loc4_)
                                                                           {
                                                                              §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_ || param2)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§push(§=g§);
                                                                                 addr149:
                                                                                 continue loop13;
                                                                                 if(_loc3_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    loop33:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             addr174:
                                                                                             §=m§.§,w§();
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   break loop13;
                                                                                                }
                                                                                                §=m§.playSound("LevelFailedPigs1");
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_ || param2)
                                                                                                   {
                                                                                                      if(!(_loc3_ && param1))
                                                                                                      {
                                                                                                         this.§7K§ = 1200;
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §8@§.camera.goToCastleView();
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_ && this)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §8@§.objects.makePigsSmile(5);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§0!0§ = param1;
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     §§goto(addr53);
                                                                                                                  }
                                                                                                                  addr53:
                                                                                                                  return;
                                                                                                                  addr29:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop20:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && param2))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §=m§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
                                                                                                                           addr193:
                                                                                                                           while(!_loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ || param2))
                                                                                                                              {
                                                                                                                                 break loop15;
                                                                                                                              }
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§goto(addr29);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       break loop11;
                                                                                                                                    }
                                                                                                                                    if(!§8@§.objects.mMightyEagleAdded)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §8@§.camera.goToBirdView();
                                                                                                                                          addr290:
                                                                                                                                          while(!_loc4_)
                                                                                                                                          {
                                                                                                                                             break loop9;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr287:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr29);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr308:
                                                                                                                              }
                                                                                                                              §§goto(addr29);
                                                                                                                           }
                                                                                                                           addr242:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §8@§.slingshot.makeBirdsJumpForJoy();
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              §§goto(addr287);
                                                                                                                           }
                                                                                                                           break loop25;
                                                                                                                        }
                                                                                                                        addr179:
                                                                                                                     }
                                                                                                                     addr232:
                                                                                                                     addr239:
                                                                                                                     while(_loc3_ && param2)
                                                                                                                     {
                                                                                                                        while(!_loc3_)
                                                                                                                        {
                                                                                                                           §8@§.camera.goToCastleView();
                                                                                                                           break loop33;
                                                                                                                        }
                                                                                                                        break loop3;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §8@§.camera.goToBirdView();
                                                                                                                        §§goto(addr242);
                                                                                                                        §§goto(addr232);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr29);
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr193);
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc4_ || this)
                                                                                                      {
                                                                                                         if(!(_loc3_ && param2))
                                                                                                         {
                                                                                                            §§goto(addr83);
                                                                                                         }
                                                                                                         break loop7;
                                                                                                      }
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                }
                                                                                                while(!§8@§.objects.mMightyEagleAdded)
                                                                                                {
                                                                                                   §§goto(addr232);
                                                                                                }
                                                                                                §§goto(addr179);
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr83);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    this.§7K§ = 1200;
                                                                                    §§goto(addr281);
                                                                                 }
                                                                                 addr346:
                                                                                 while(_loc3_ && _loc3_)
                                                                                 {
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc3_ && param2)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          §8@§.particles.moveTrailsNewToOld();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break loop5;
                                                                                             }
                                                                                             §§goto(addr83);
                                                                                          }
                                                                                       }
                                                                                       addr391:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§7K§ = 5000;
                                                                                          continue loop32;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr83);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr83);
                                                                              }
                                                                              §§push(param1);
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     while(_loc4_)
                                                                     {
                                                                        this.§7K§ = 1200;
                                                                        §§goto(addr308);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr83);
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && param2))
                                                                  {
                                                                     this.§7K§ = 2000;
                                                                     §§goto(addr332);
                                                                  }
                                                                  §§goto(addr358);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §8@§.camera.goToCastleView();
                                                               §§goto(addr346);
                                                            }
                                                            §§goto(addr401);
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§7!5§ = false;
                                                      §§goto(addr391);
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             while(true)
                                             {
                                                §8@§.camera.goToBirdView();
                                                §§goto(addr401);
                                             }
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             §§goto(addr149);
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             break loop0;
                                          }
                                          this.§7K§ = 2000;
                                          §§goto(addr411);
                                       }
                                    }
                                 }
                              }
                              return;
                              addr419:
                           }
                           break;
                        }
                     }
                     addr448:
                  }
                  §§goto(addr419);
               }
            }
            §§goto(addr448);
         }
         §§goto(addr239);
      }
      
      public function § !<§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§11§ = Math.max(this.§11§,param1);
         }
      }
      
      protected function §&C§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§8@§.slingshot.mSlingShotState == §;c§.§"!R§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§pop();
                     addr62:
                     return !§8@§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §8!S§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§@m§ = null;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§2!%§);
            if(_loc5_ || this)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§2!%§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§%A§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§11§);
                        if(!(_loc4_ && this))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§11§ = §§pop();
                        addr996:
                        while(true)
                        {
                           §§push(this.§11§);
                           addr973:
                           while(true)
                           {
                              §§push(0);
                              addr974:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§2!%§ = 0;
                                       addr978:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr975:
                                 }
                              }
                           }
                        }
                     }
                     addr983:
                  }
                  while(true)
                  {
                     §§push(this.§2!%§);
                     loop9:
                     while(true)
                     {
                        §§push(0);
                        loop10:
                        while(true)
                        {
                           §§push(§§pop() <= §§pop());
                           loop11:
                           while(true)
                           {
                              §§push(§§pop());
                              loop12:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                this.§2!%§ = §'!0§;
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(Boolean(§8@§.objects.isWorldAtSleep()));
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
                                                            while(!_loc4_)
                                                            {
                                                               §§push(§§pop());
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop24:
                                                                     while(!_loc4_)
                                                                     {
                                                                        §§pop();
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§%A§);
                                                                           while(_loc5_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 addr911:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr913:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§11§);
                                                                                             addr879:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                addr880:
                                                                                                while(_loc5_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   loop33:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ && param1)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            break loop33;
                                                                                                         }
                                                                                                         addr961:
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr912:
                                                                                    }
                                                                                 }
                                                                              }
                                                                              loop94:
                                                                              while(_loc5_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop95:
                                                                                             for(; !(_loc4_ && _loc3_); if(!(_loc5_ || param1))
                                                                                             {
                                                                                                continue;
                                                                                             },if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§goto(addr60);
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                      §§goto(addr805);
                                                                                                   }
                                                                                                   §§goto(addr515);
                                                                                                }
                                                                                                §§goto(addr460);
                                                                                             },§§goto(addr342))
                                                                                             {
                                                                                                §§pop();
                                                                                                loop96:
                                                                                                while(!_loc4_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(§8@§.camera.mCurrentAction == §?M§.§4S§);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop95;
                                                                                                            }
                                                                                                            addr60:
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               continue loop94;
                                                                                                            }
                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr71:
                                                                                                                  if(_loc5_ || _loc2_)
                                                                                                                  {
                                                                                                                     loop97:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 continue loop96;
                                                                                                                              }
                                                                                                                              addr84:
                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       this.§1!S§(§7!%§);
                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   addr111:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr1011:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr913);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr447:
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc4_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr460:
                                                                                                                                                   if(!§[&§.§&!'§.objects.mMightyEagleAdded)
                                                                                                                                                   {
                                                                                                                                                      addr461:
                                                                                                                                                      this.§1!S§(§58§);
                                                                                                                                                      addr464:
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         addr342:
                                                                                                                                                         §§push(!§8@§.camera.isOnCastleView());
                                                                                                                                                         if(!(_loc4_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr305:
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop12;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr324:
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr334:
                                                                                                                                                                              if(!(_loc4_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr256:
                                                                                                                                                                                 §§push(§8@§.camera.mCurrentAction == §?M§.§4S§);
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr324);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                    break loop95;
                                                                                                                                                                                 }
                                                                                                                                                                                 loop82:
                                                                                                                                                                                 while(_loc5_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    loop79:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§8@§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop74:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§2!%§ = §'!0§;
                                                                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop75:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop55:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§=t§(false));
                                                                                                                                                                                                            addr622:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc4_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop76:
                                                                                                                                                                                                                  while(_loc5_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop39:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§1!%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop55;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1037:
                                                                                                                                                                                                                                             _loc3_ = §8@§.activeObject;
                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1181:
                                                                                                                                                                                                                                                if(!_loc3_ || _loc3_.§4^§ < _loc3_.§,>§)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1182:
                                                                                                                                                                                                                                                   §§push(Boolean(_loc3_));
                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1188:
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1196:
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            addr1197:
                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc3_ is §]!$§);
                                                                                                                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1165:
                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1169:
                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1172:
                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                           addr1173:
                                                                                                                                                                                                                                                                           §§push((_loc3_ as §^!1§).§]Z§);
                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc4_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1128:
                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1136:
                                                                                                                                                                                                                                                                                                   if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                      addr1144:
                                                                                                                                                                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc3_.getSpecialAnimationProgress());
                                                                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() >= 0);
                                                                                                                                                                                                                                                                                                            if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1092:
                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     this.§7!5§ = true;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1099:
                                                                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        this.§1!S§(§,g§);
                                                                                                                                                                                                                                                                                                                        addr1070:
                                                                                                                                                                                                                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1059:
                                                                                                                                                                                                                                                                                                                           §8@§.activeObject = null;
                                                                                                                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              this.§1!S§(§,g§);
                                                                                                                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc4_ && this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1059);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr1255:
                                                                                                                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                                                                                                                    addr1206:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1099);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1059);
                                                                                                                                                                                                                                                                                                                              addr1065:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1070);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1144);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1182);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1197);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1059);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1136);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1177);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1173);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1182);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1092);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1169);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1196);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1165);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1136);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1204);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1172);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1128);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1092);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1188);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1181);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1172);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1205);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1169);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1181);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1206);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1065);
                                                                                                                                                                                                                                             addr757:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§&C§());
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop55;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§8@§.objects.mMightyEagleAdded)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Boolean(§8@§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                                                                                                                                            continue loop76;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr742:
                                                                                                                                                                                                                                                         addr742:
                                                                                                                                                                                                                                                         addr742:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop82;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§8@§.objects.mSardineCanAdded)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop55;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc4_ && param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop74;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            this.§1!%§(§=g§);
                                                                                                                                                                                                                                                            while(_loc5_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop55;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr975);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr710:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1255);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr755:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop40:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          addr901:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop42:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   loop43:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§11§);
                                                                                                                                                                                                                                                      while(!_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(6000);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr430:
                                                                                                                                                                                                                                                         if(!(_loc5_ || param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§8@§.objects.isWorldAtSleep())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr447);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.§2!%§ = 0;
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc4_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.§7K§ = 2000;
                                                                                                                                                                                                                                                                                 if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr360:
                                                                                                                                                                                                                                                                                    if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc4_ && this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr342);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr978);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(_loc5_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§7K§);
                                                                                                                                                                                                                                                                                          if(_loc5_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop9;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr430);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1220:
                                                                                                                                                                                                                                                                                             if(§§pop() <= 0)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break loop97;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break loop74;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1255);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr412:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr474:
                                                                                                                                                                                                                                                                                    §§push(§8@§.camera.mCurrentAction == §?M§.§4S§);
                                                                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr477:
                                                                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr488:
                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      this.§1!S§(§58§);
                                                                                                                                                                                                                                                                                                      addr389:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      loop50:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(!§8@§.objects.isPigsAlive());
                                                                                                                                                                                                                                                                                                         loop51:
                                                                                                                                                                                                                                                                                                         while(!_loc4_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.§%A§);
                                                                                                                                                                                                                                                                                                                  loop59:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                                                                              while(_loc5_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr821:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                       addr822:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this.§&C§());
                                                                                                                                                                                                                                                                                                                                          addr791:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                             addr792:
                                                                                                                                                                                                                                                                                                                                             while(!_loc4_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr821:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          this.§11§ = 15000;
                                                                                                                                                                                                                                                                                                                                          addr799:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             this.§%A§ = true;
                                                                                                                                                                                                                                                                                                                                             addr785:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr763);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr861);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr796:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr763);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop23;
                                                                                                                                                                                                                                                                                                                              addr818:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr821);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                                                                           break loop59;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr874:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop50;
                                                                                                                                                                                                                                                                                                                  addr805:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc4_ && this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  this.§11§ = 6000;
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     this.§%A§ = true;
                                                                                                                                                                                                                                                                                                                     if(_loc4_ && _loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop55;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr861:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               this.§7K§ = 1000;
                                                                                                                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break loop74;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1255);
                                                                                                                                                                                                                                                                                                               §§goto(addr763);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr888);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1255);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr785);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop39;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr780:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr389);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr791);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr779:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr780);
                                                                                                                                                                                                                                                                                    addr529:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1037);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr381:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr742);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr443:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §8@§.updatePigAnimations(param1);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr348:
                                                                                                                                                                                                                                                                  §§goto(addr342);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr868);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr911);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr440:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr879);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr973);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr870:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr871);
                                                                                                                                                                                                                                                   §§goto(addr71);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr899:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop40;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr792);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr748:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr742);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop22;
                                                                                                                                                                                                                           addr737:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop79;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §8@§.gameOver();
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop25;
                                                                                                                                                                                                                  addr632:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push(this.§7K§);
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - param1);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().§7K§ = §§pop();
                                                                                                                                                                                                                  addr605:
                                                                                                                                                                                                                  while(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§7K§);
                                                                                                                                                                                                                     continue loop9;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr697:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§1!%§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop97;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop75;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr699:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr996);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr636);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr973);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr912);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr637:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr822);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1250:
                                                                                                                                                                                             §§goto(addr1255);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr637);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr697);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop21;
                                                                                                                                                                                 addr688:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr348);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr710);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr474);
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        break loop96;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1255);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr871);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr818);
                                                                                                                                                            }
                                                                                                                                                            addr525:
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr528:
                                                                                                                                                                  §§pop();
                                                                                                                                                                  §§goto(addr529);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr486);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr779);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr778:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr755);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr477);
                                                                                                                                                         addr375:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr542:
                                                                                                                                                         if(!(_loc4_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §8@§.updatePigAnimations(param1);
                                                                                                                                                            addr552:
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc5_ || this))
                                                                                                                                                               {
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                               §§push(!§8@§.camera.isOnCastleView());
                                                                                                                                                               if(_loc5_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr525);
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr910);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr911);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr622);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr654);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr644);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr375);
                                                                                                                                                }
                                                                                                                                                §§goto(addr552);
                                                                                                                                             }
                                                                                                                                             §§goto(addr509);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1255);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1235);
                                                                                                                                    }
                                                                                                                                    §§goto(addr799);
                                                                                                                                 }
                                                                                                                                 §§goto(addr464);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       addr242:
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§7K§ = 0;
                                                                                                                                                while(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§0!0§);
                                                                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§7!%§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr542);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§0!0§);
                                                                                                                                                               if(_loc4_ && this)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(§,g§);
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               addr1029:
                                                                                                                                                               if(§§pop() == §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1037);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1235);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr1209:
                                                                                                                                                                  if(this.§0!0§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1220);
                                                                                                                                                                        §§push(this.§7K§);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1255);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1255);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§push(§8!@§);
                                                                                                                                                      if(_loc5_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1029);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1209);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr111);
                                                                                                                                                }
                                                                                                                                                §§goto(addr632);
                                                                                                                                             }
                                                                                                                                             addr590:
                                                                                                                                          }
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr111);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr636);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§8@§.camera.isOnCastleView()));
                                                                                                                                             continue loop94;
                                                                                                                                          }
                                                                                                                                          addr897:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr899);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr605);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr334);
                                                                                                                                    }
                                                                                                                                    §§goto(addr84);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr461);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr1011);
                                                                                                                     }
                                                                                                                     if(§8@§.slingshot.updateScoreForRemainingBirds())
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr1235);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        this.§1!S§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                     }
                                                                                                                     §§goto(addr1255);
                                                                                                                     addr78:
                                                                                                                  }
                                                                                                                  §§goto(addr870);
                                                                                                               }
                                                                                                               §§goto(addr737);
                                                                                                            }
                                                                                                            §§goto(addr256);
                                                                                                         }
                                                                                                         §§goto(addr796);
                                                                                                      }
                                                                                                      §§goto(addr488);
                                                                                                   }
                                                                                                   §§goto(addr381);
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   this.§1!S§(§58§);
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      §§goto(addr181);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr1250);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr718);
                                                                                                }
                                                                                                §§goto(addr1255);
                                                                                             }
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§goto(addr277);
                                                                                                   }
                                                                                                   §§goto(addr899);
                                                                                                }
                                                                                                §§goto(addr821);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr528);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr78);
                                                                                       }
                                                                                       §§goto(addr901);
                                                                                    }
                                                                                    §§goto(addr736);
                                                                                 }
                                                                                 §§goto(addr305);
                                                                              }
                                                                           }
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        continue loop1;
                                                                     }
                                                                     addr936:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(!§8@§.objects.isPigsAlive());
                                                                        continue loop21;
                                                                     }
                                                                     §§goto(addr897);
                                                                  }
                                                               }
                                                            }
                                                            continue loop19;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr983);
                                             }
                                             §§goto(addr996);
                                          }
                                          §§goto(addr1235);
                                       }
                                       §§goto(addr596);
                                    }
                                    addr944:
                                 }
                                 §§goto(addr961);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr699);
      }
      
      protected function §1!%§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(!this.§%A§)
            {
               while(true)
               {
                  this.§%A§ = true;
                  addr140:
                  while(true)
                  {
                  }
               }
               addr137:
            }
            loop2:
            while(true)
            {
               §§push(new Date().time - §8@§.slingshot.timeOfLastBirdShot);
               loop3:
               while(true)
               {
                  §§push(6000);
                  loop4:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop5:
                        while(!§8@§.slingshot.mDragging)
                        {
                           while(true)
                           {
                              if(!§8@§.objects.isWorldAtSleep())
                              {
                                 while(true)
                                 {
                                    §§push(this.§11§);
                                    if(_loc4_)
                                    {
                                       §§push(0);
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(!(_loc4_ || this))
                                                {
                                                   §§goto(addr115);
                                                }
                                                while(true)
                                                {
                                                   this.§1!S§(param1,param2);
                                                }
                                             }
                                             §§goto(addr71);
                                          }
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                                 addr25:
                              }
                              loop7:
                              while(!_loc3_)
                              {
                                 this.§11§ = 0;
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop5;
                                    }
                                    if(!_loc4_)
                                    {
                                       if(_loc3_ && param2)
                                       {
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    addr71:
                                    while(true)
                                    {
                                       if(_loc4_ || param2)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr25);
                                          }
                                          continue loop7;
                                       }
                                       continue loop8;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue;
                              return;
                           }
                        }
                        if(!_loc3_)
                        {
                           return;
                        }
                        §§goto(addr137);
                     }
                     addr115:
                     return;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §=t§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§0!0§);
            loop0:
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr219:
                              while(true)
                              {
                                 §§push(this.§0!0§);
                                 addr193:
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    addr194:
                                    while(_loc2_)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr218:
                        }
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
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    addr200:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop13:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                §§pop();
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      loop17:
                                                      while(!_loc3_)
                                                      {
                                                         §§push(§§pop());
                                                         loop18:
                                                         while(!_loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§pop();
                                                                  loop20:
                                                                  while(!(_loc3_ && param1))
                                                                  {
                                                                     §§push(this.§7K§ <= 0);
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        if(!(_loc2_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc2_ || _loc3_))
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 if(_loc3_ && _loc3_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§0!0§);
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr165:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(§=g§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             break loop17;
                                                                                          }
                                                                                       }
                                                                                       addr168:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr193);
                                                                                    }
                                                                                    §§goto(addr194);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr218);
                                                                              }
                                                                              addr52:
                                                                              if(_loc2_ || param1)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                           }
                                                                           §§goto(addr219);
                                                                        }
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr165);
                                                                  }
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(!§§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr76);
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               continue loop14;
                                                            }
                                                         }
                                                         continue loop13;
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                          }
                                          addr76:
                                          return §§pop();
                                       }
                                    }
                                    addr185:
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr211);
      }
      
      public function §#h§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§0!0§);
            if(!_loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc1_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && this))
                        {
                           §§pop();
                           addr71:
                           return this.§0!0§ == §=g§;
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
         if(!_loc3_)
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
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§@I§);
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
                           addr240:
                           while(true)
                           {
                              §§push(!§8@§.mReadyToRun);
                           }
                        }
                        addr239:
                     }
                     while(true)
                     {
                        loop6:
                        while(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(Boolean(§8@§.slingshot.mDragging));
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop9:
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    if(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§pop();
                                          addr215:
                                          while(true)
                                          {
                                             §§push(Boolean(§8@§.camera.mDragging));
                                             addr162:
                                             do
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop10;
                                                }
                                             }
                                             while(_loc2_ || this);
                                             
                                             continue loop1;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             loop14:
                                             while(_loc2_ || this)
                                             {
                                                §§push(this.§0!0§);
                                                loop15:
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§push(§7!%§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         addr128:
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!(_loc2_ || this))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr162);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr182:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       if(!§8@§.isPlayingReplay())
                                                                                       {
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             if(!(_loc2_ || _loc2_))
                                                                                             {
                                                                                                break loop6;
                                                                                             }
                                                                                             §8@§.camera.adjustManualScale(param1);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §8@§.changeReplaySpeed(param1);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr36:
                                                                                             if(!(_loc2_ || this))
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr240);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 addr24:
                                                                                 return;
                                                                                 addr73:
                                                                              }
                                                                              while(!(_loc3_ && param1))
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break loop17;
                                                                                 }
                                                                                 §§pop();
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop23;
                                                                           }
                                                                           continue loop9;
                                                                           addr141:
                                                                        }
                                                                        §§pop();
                                                                        continue loop14;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               addr182:
                                                            }
                                                            §§goto(addr141);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                      addr127:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§,g§);
                                                         addr181:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr180:
                                                   }
                                                   §§goto(addr182);
                                                }
                                             }
                                             continue loop7;
                                          }
                                          if(_loc3_)
                                          {
                                             §§goto(addr215);
                                          }
                                          §§goto(addr24);
                                       }
                                       else
                                       {
                                          §§push(this.§0!0§);
                                       }
                                       §§goto(addr180);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr73);
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §=`§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-l§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_ || _loc3_)
         {
            if(!this.§@I§)
            {
               if(_loc5_ || this)
               {
                  §§goto(addr36);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(!_loc6_)
            {
               dispatchEvent(_loc3_);
               loop0:
               while(!_loc3_.isDefaultPrevented())
               {
                  loop1:
                  while(true)
                  {
                     §"j§.§%!@§();
                     addr197:
                     loop2:
                     while(true)
                     {
                        §§push(this.§=t§(false));
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 if(!§8@§.isPlayingReplay())
                                 {
                                    if(_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                    §§push(Boolean(§8@§.activeObject));
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
                                                addr175:
                                                while(true)
                                                {
                                                   if(!(_loc5_ || param2))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue loop2;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      break loop0;
                                                   }
                                                   §§push(this.§0!0§ == §8!@§);
                                                   if(!_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                continue loop5;
                                             }
                                             addr174:
                                          }
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue loop6;
                                                }
                                                if(!§§pop())
                                                {
                                                   continue loop3;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            addr116:
                                                            this.§7!5§ = false;
                                                            §8@§.activatePowerup();
                                                            if(!_loc6_)
                                                            {
                                                               return;
                                                            }
                                                            addr159:
                                                            §§goto(addr283);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc4_ = §8@§.screenToBox2D(param1,param2);
                                                      if(!_loc6_)
                                                      {
                                                         if(§8@§.slingshot.canStartDragging(_loc4_))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr255:
                                                               §8@§.slingshot.startDragging();
                                                            }
                                                            this.§1!S§(§58§);
                                                            addr258:
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr258);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §8@§.camera.startDragging(param1,param2);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §8@§.camera.startDragging(param1,param2);
                                    if(_loc5_ || param1)
                                    {
                                       §8@§.resetReplaySpeed();
                                    }
                                 }
                                 addr283:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr190);
                                    }
                                    §§push(this.§7!5§);
                                    if(_loc5_ || this)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop12;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(_loc6_ && _loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc5_ || param1)
                                    {
                                       continue loop13;
                                    }
                                    §§goto(addr174);
                                    §§goto(addr116);
                                 }
                                 return;
                              }
                           }
                           addr190:
                           return;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr197);
         }
         addr36:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!(_loc5_ && this))
         {
            §§push(this.§@I§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §"j§.§1!2§();
                     if(_loc4_)
                     {
                        while(this.§0!0§ == §>#§)
                        {
                           if(!_loc5_)
                           {
                              this.§1!S§(§58§);
                              if(_loc4_ || this)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    return;
                                 }
                                 addr64:
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr153);
                           }
                           break loop0;
                        }
                        if(§8@§.slingshot.mDragging)
                        {
                           if(!_loc5_)
                           {
                              _loc3_ = §8@§.screenToBox2D(param1,param2);
                              if(!(_loc5_ && param1))
                              {
                                 §8@§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                 do
                                 {
                                    if(§8@§.slingshot.canShootTheBird())
                                    {
                                       continue;
                                    }
                                    §8@§.slingshot.cancelDragging();
                                    if(!(_loc5_ && param2))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc5_ && param1)
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                          }
                                          §§goto(addr147);
                                       }
                                       else
                                       {
                                          addr137:
                                       }
                                       this.§1!S§(§8!@§);
                                    }
                                    §§goto(addr147);
                                 }
                                 while(!_loc4_);
                                 
                                 §8@§.slingshot.shoot();
                              }
                              §§goto(addr137);
                           }
                           break;
                        }
                        addr147:
                        if(§8@§.camera.mDragging)
                        {
                           if(!_loc5_)
                           {
                              addr153:
                              §§push(!isNaN(param1));
                              if(_loc4_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§pop();
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          §8@§.camera.dragToNewPoint(param1,param2);
                                          addr205:
                                          while(true)
                                          {
                                             §§goto(addr176);
                                          }
                                       }
                                       addr200:
                                    }
                                 }
                                 §§goto(addr199);
                              }
                              addr199:
                              if(§§pop())
                              {
                                 §§goto(addr200);
                              }
                              addr176:
                              §§goto(addr173);
                           }
                           §§goto(addr205);
                        }
                        addr173:
                        while(true)
                        {
                           §8@§.camera.stopDragging();
                           if(!_loc5_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        return;
                        addr58:
                     }
                     break;
                  }
                  §§goto(addr199);
                  §§push(!isNaN(param2));
               }
               §§goto(addr64);
            }
            §§goto(addr199);
         }
         §§goto(addr58);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_)
         {
            if(!this.§@I§)
            {
               if(_loc4_ || param2)
               {
                  return;
               }
               addr90:
               §8@§.camera.dragToNewPoint(param1,param2);
            }
            else
            {
               addr39:
               if(§8@§.slingshot.mDragging)
               {
                  if(!(_loc5_ && param2))
                  {
                     _loc3_ = §8@§.screenToBox2D(param1,param2);
                     if(!_loc5_)
                     {
                        §8@§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                        if(_loc4_ || param1)
                        {
                           addr95:
                           this.§!!#§ = param1;
                           if(!(_loc5_ && param1))
                           {
                              addr115:
                              this.§6W§ = param2;
                           }
                        }
                        return;
                     }
                     §§goto(addr115);
                  }
               }
               else if(§8@§.camera.mDragging)
               {
                  if(_loc4_)
                  {
                     §§goto(addr90);
                  }
               }
            }
            §§goto(addr95);
         }
         §§goto(addr39);
      }
      
      public function §`C§() : Point
      {
         return new Point(this.§!!#§,this.§6W§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§@t§.§6!Y§(this.§@t§.getValue() + param1);
            do
            {
               this.§ !<§(§8&§);
            }
            while(_loc2_ && param1);
            
         }
      }
      
      override public function getScore() : int
      {
         return this.§@t§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(!§[&§.§&!'§.objects.mMightyEagleAdded)
            {
               if(_loc4_)
               {
                  §§push(0);
                  if(!(_loc3_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr50:
                  §§push(§[!!§.§1L§(§[!!§.§7!F§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr50);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§@I§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§@I§ = param1;
         }
      }
   }
}
