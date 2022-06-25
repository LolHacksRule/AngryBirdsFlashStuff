package §2!?§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §2!H§.LevelMain;
   import §2!H§.LevelSlingshot;
   import §3p§.§3l§;
   import §3p§.§4!G§;
   import §3p§.LevelObject;
   import §6b§.§3r§;
   import §7p§.Integer;
   import §<!j§.§%!-§;
   import §=?§.SoundEngine;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §case§ extends BasicController
   {
      
      public static const §!>§:int = 0;
      
      public static const §-^§:int = 1;
      
      public static const §'!4§:int = 2;
      
      public static const §8!K§:int = 3;
      
      public static const §;X§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §'z§:int = 7;
      
      protected static const §#!K§:Number = 0.001;
      
      public static const §'[§:Number = 2000;
      
      public static const §!r§:Number = 2500;
      
      public static const §-]§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!>§ = 0;
            loop0:
            while(true)
            {
               §-^§ = 1;
               loop1:
               while(true)
               {
                  §'!4§ = 2;
                  while(true)
                  {
                     §8!K§ = 3;
                     addr131:
                     addr87:
                     while(true)
                     {
                        §;X§ = 4;
                        continue loop1;
                     }
                     if(_loc1_ && §case§)
                     {
                        continue;
                     }
                     §§push(§§findproperty(§#!K§));
                     §§push(§%!-§.§`s§);
                     if(_loc2_)
                     {
                        §§push(§§pop() / 100);
                     }
                     §§pop().§#!K§ = §§pop();
                     loop8:
                     while(!_loc1_)
                     {
                        while(true)
                        {
                           §'[§ = 2000;
                           loop10:
                           while(true)
                           {
                              §!r§ = 2500;
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       addr41:
                                       break;
                                    }
                                    if(_loc2_ || §case§)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 continue loop10;
                              }
                              continue loop8;
                           }
                        }
                        return;
                     }
                     loop7:
                     while(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr87);
                        }
                        else
                        {
                           while(true)
                           {
                              LEVEL_STATE_VICTORY2_END = 6;
                              break loop7;
                           }
                           addr114:
                        }
                     }
                     while(true)
                     {
                        §'z§ = 7;
                        §§goto(addr83);
                     }
                     addr83:
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public var §`!#§:int = 0;
      
      protected var §+L§:int = 0;
      
      public var § A§:Number;
      
      protected var §8!W§:Number = 0;
      
      protected var §3!^§:Boolean = false;
      
      private var §-o§:Number = 0;
      
      public var §#!3§:Number = 0;
      
      protected var §^!-§:Boolean;
      
      protected var §!-§:Number = 0;
      
      protected var § `§:Number = 0;
      
      protected var §6'§:Boolean = true;
      
      protected var §4!!§:Integer;
      
      public function §case§(param1:LevelMain)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!!§ = new Integer();
         }
         do
         {
            super(param1);
         }
         while(_loc2_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§4!!§.assign(0);
               loop1:
               while(true)
               {
                  this.§`!#§ = -1;
                  loop2:
                  while(true)
                  {
                     this.§+L§ = 0;
                     while(_loc2_)
                     {
                        this.§8!W§ = 0;
                        loop7:
                        for(; !(_loc1_ && _loc2_); while(true)
                        {
                           if(!(_loc2_ || this))
                           {
                              continue loop7;
                           }
                           §§goto(addr82);
                           addr96:
                           §"!>§.objects.setGroundTextureEnabled(true);
                           if(_loc1_ && this)
                           {
                              continue;
                           }
                           §§goto(addr43);
                        },continue loop2)
                        {
                           §0!H§(true);
                           while(_loc2_)
                           {
                              §"!>§.objects.setDamageEnabled(true);
                              continue loop7;
                              if(_loc2_ || this)
                              {
                                 continue loop1;
                              }
                           }
                           loop5:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 this.§6A§(§!>§);
                                 while(true)
                                 {
                                    this.§ A§ = §'[§;
                                    continue loop7;
                                    addr82:
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§3!^§ = false;
                                    continue loop5;
                                 }
                                 addr146:
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1 = §"!>§.update(param1,true);
         }
         do
         {
            this.§-e§(param1);
            do
            {
               this.§<!C§(param1);
            }
            while(!_loc2_);
            
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      private function §-e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§+L§ != 0)
            {
               if(!_loc2_)
               {
                  §"!>§.camera.adjustManualScale(this.§+L§ > 0,param1 * §#!K§);
               }
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §"!>§.clearLevel();
            while(true)
            {
               removeEventListeners();
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§`!#§ = -1;
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
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
      
      public function §>e§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(§"!>§.camera.mCurrentCameraSliderLocation < §%!-§.§[!a§)
            {
               if(_loc1_)
               {
                  return false;
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr48:
                     while(true)
                     {
                        §§push(!§"!>§.objects.isWorldAtSleep());
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(false);
                                 break;
                              }
                              continue loop0;
                           }
                           addr24:
                           while(true)
                           {
                              §§push(true);
                              if(!_loc1_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           return §§pop();
                        }
                        continue loop0;
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr88);
      }
      
      public function §6g§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%!-§ = §"!>§.camera;
         if(_loc4_)
         {
            §§push(_loc2_.§8o§);
            loop0:
            while(true)
            {
               §§push(0);
               addr118:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     addr25:
                     return;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§8o§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§8o§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr29);
      }
      
      public function §6A§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§;!5§(false));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     loop5:
                     while(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§push(param1);
                           loop7:
                           while(true)
                           {
                              §§push(§!>§);
                              loop8:
                              while(§§pop() != §§pop())
                              {
                                 §§push(param1);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§-^§);
                                    loop10:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(param1);
                                       loop11:
                                       for(; _loc4_ || _loc3_; if(!(_loc4_ || param1))
                                       {
                                          continue;
                                       },§§goto(addr354),§§push(§;X§))
                                       {
                                          §§push(§'!4§);
                                          loop12:
                                          while(true)
                                          {
                                             if(!(_loc4_ || param1))
                                             {
                                                continue loop10;
                                             }
                                             if(_loc3_ && this)
                                             {
                                                continue loop8;
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                break;
                                             }
                                             §§push(param1);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§8!K§);
                                                continue loop12;
                                                addr338:
                                                while(true)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop13;
                                                   loop17:
                                                   while(_loc4_ || param2)
                                                   {
                                                      §§push(LEVEL_STATE_VICTORY2_END);
                                                      loop18:
                                                      while(§§pop() != §§pop())
                                                      {
                                                         §§push(param1);
                                                         loop19:
                                                         while(!_loc3_)
                                                         {
                                                            §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(param1);
                                                                        break loop19;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  while(!_loc3_)
                                                                  {
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        this.§#!3§ = 2000;
                                                                        while(_loc4_)
                                                                        {
                                                                           this.§-o§ = §-]§;
                                                                           while(true)
                                                                           {
                                                                              §"!>§.camera.goToCastleView();
                                                                              addr320:
                                                                              while(_loc3_ && param1)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              break loop20;
                                                                           }
                                                                        }
                                                                        break loop20;
                                                                        addr369:
                                                                        addr470:
                                                                     }
                                                                     break loop8;
                                                                  }
                                                                  break loop12;
                                                                  addr357:
                                                                  addr354:
                                                               }
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§'z§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              §§goto(addr156);
                                                                           }
                                                                           §§goto(addr29);
                                                                           continue loop18;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  this.§#!3§ = 1200;
                                                               }
                                                               while(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(!§"!>§.objects.mMightyEagleAdded);
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(_loc4_ || param1)
                                                                              {
                                                                                 §"!>§.camera.goToBirdView();
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ && param1)
                                                                                    {
                                                                                       break loop5;
                                                                                    }
                                                                                    §"!>§.slingshot.makeBirdsJumpForJoy();
                                                                                    addr204:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          break loop27;
                                                                                       }
                                                                                       continue loop27;
                                                                                    }
                                                                                 }
                                                                                 if(!(_loc3_ && param2))
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr177:
                                                                                       addr196:
                                                                                       §§push(SoundEngine);
                                                                                       §§push("LevelCompletedBirdsMilitary");
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                                       }
                                                                                       §§pop().§9!X§(§§pop());
                                                                                       break loop20;
                                                                                       addr197:
                                                                                    }
                                                                                    addr386:
                                                                                    §"!>§.camera.goToCastleView();
                                                                                    addr391:
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break loop20;
                                                                                    }
                                                                                    while(_loc4_ || param1)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          break loop20;
                                                                                       }
                                                                                       addr528:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param2);
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             addr480:
                                                                                             if(!(_loc4_ || _loc3_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(!§§pop());
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                             }
                                                                                             while(!(_loc3_ && param1))
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             continue loop1;
                                                                                             addr501:
                                                                                          }
                                                                                          §§goto(addr501);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§goto(addr529);
                                                                                          §§goto(addr480);
                                                                                       }
                                                                                       addr529:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §"!>§.particles.moveTrailsNewToOld();
                                                                                       §§goto(addr400);
                                                                                    }
                                                                                    addr400:
                                                                                    addr414:
                                                                                 }
                                                                                 break loop18;
                                                                                 addr241:
                                                                              }
                                                                              addr290:
                                                                              §"!>§.camera.goToBirdView();
                                                                              break loop20;
                                                                              addr295:
                                                                           }
                                                                           §§goto(addr241);
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                     §§goto(addr501);
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                  }
                                                                  §§goto(addr290);
                                                               }
                                                               §§goto(addr289);
                                                               §§push(!§"!>§.objects.mMightyEagleAdded);
                                                            }
                                                            loop24:
                                                            while(true)
                                                            {
                                                               this.§`!#§ = param1;
                                                               if(_loc4_)
                                                               {
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        return;
                                                                     }
                                                                     addr156:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!(_loc4_ || param1))
                                                                              {
                                                                                 break loop10;
                                                                              }
                                                                              SoundEngine.§;!8§();
                                                                              while(true)
                                                                              {
                                                                                 §§push(SoundEngine.§9!X§("LevelFailedPigs1"));
                                                                                 if(!(_loc3_ && param2))
                                                                                 {
                                                                                    §§pop();
                                                                                    loop29:
                                                                                    for(; _loc4_ || param2; loop31:
                                                                                    for(; !(_loc3_ && param1); while(true)
                                                                                    {
                                                                                       if(!(_loc4_ || param1))
                                                                                       {
                                                                                          continue loop31;
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(!(_loc4_ || param1))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                             §§goto(addr369);
                                                                                          }
                                                                                          §§goto(addr333);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr105);
                                                                                       }
                                                                                    },§§goto(addr391))
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §"!>§.objects.makePigsSmile(5);
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr204);
                                                                                    })
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          this.§#!3§ = 1200;
                                                                                          while(!(_loc3_ && param2))
                                                                                          {
                                                                                             §"!>§.camera.goToCastleView();
                                                                                             continue loop29;
                                                                                          }
                                                                                          §§goto(addr320);
                                                                                          addr105:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr446:
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop24;
                                                                                             addr461:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.§#!3§ = 5000;
                                                                                             §§goto(addr414);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr197);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr196);
                                                                           }
                                                                           §§goto(addr295);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr275);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr176);
                                                               }
                                                               §§goto(addr57);
                                                            }
                                                            §§goto(addr391);
                                                         }
                                                         continue loop17;
                                                      }
                                                      this.§#!3§ = 1200;
                                                      §§goto(addr313);
                                                   }
                                                }
                                                continue loop11;
                                             }
                                          }
                                          this.§^!-§ = false;
                                          §§goto(addr446);
                                       }
                                       continue loop7;
                                    }
                                    §"!>§.camera.goToBirdView();
                                    §§goto(addr461);
                                 }
                              }
                              this.§#!3§ = 2000;
                              §§goto(addr470);
                           }
                        }
                     }
                     return;
                     addr515:
                  }
                  §§goto(addr528);
               }
            }
         }
         §§goto(addr448);
      }
      
      public function §=!_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§8!W§ = Math.max(this.§8!W§,param1);
         }
      }
      
      protected function §^G§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(§"!>§.slingshot.mSlingShotState == LevelSlingshot.§71§);
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop());
                  if(_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        §§pop();
                        addr74:
                        §§push(!§"!>§.objects.hasBirds());
                        if(_loc1_)
                        {
                           addr81:
                           return Boolean(§§pop());
                        }
                     }
                  }
               }
            }
            §§goto(addr81);
         }
         §§goto(addr74);
      }
      
      public function §<!C§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:LevelObject = null;
         if(_loc6_)
         {
            §§push(this);
            §§push(this.§ A§);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() - param1);
            }
            §§pop().§ A§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§3!^§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§8!W§);
                        if(!_loc5_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§8!W§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§8!W§);
                           if(_loc6_)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§ A§ = 0;
                                       loop6:
                                       while(true)
                                       {
                                          addr1341:
                                          while(true)
                                          {
                                             §§push(this.§ A§);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(0);
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
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
                                                                        §§push(this.§;!5§(false));
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           addr1326:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           loop93:
                                                                           while(!(_loc5_ && param1))
                                                                           {
                                                                              addr1265:
                                                                              §§push(!§§pop());
                                                                              loop58:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop59:
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop69:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop70:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             loop71:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop72:
                                                                                                while(_loc6_)
                                                                                                {
                                                                                                   §§push(this.§8!W§);
                                                                                                   loop73:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(6000);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop() > §§pop());
                                                                                                            loop81:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               addr1233:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop75:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop76:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        loop114:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr1238:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(!§"!>§.objects.isPigsAlive());
                                                                                                                                    addr1209:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1237:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              loop77:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§push(this.§3!^§);
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 loop78:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§8!W§ = 6000;
                                                                                                                                    loop79:
                                                                                                                                    while(!_loc5_)
                                                                                                                                    {
                                                                                                                                       this.§3!^§ = true;
                                                                                                                                       loop80:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          loop64:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop65:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§;!5§(false));
                                                                                                                                                loop66:
                                                                                                                                                while(_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop71;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §"!>§.gameOver();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop15;
                                                                                                                                                         addr901:
                                                                                                                                                      }
                                                                                                                                                      loop116:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(this.§#!3§);
                                                                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - param1);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§#!3§ = §§pop();
                                                                                                                                                         loop117:
                                                                                                                                                         while(!(_loc5_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§#!3§);
                                                                                                                                                                  if(_loc5_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop3;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc6_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           this.§#!3§ = 0;
                                                                                                                                                                           loop119:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr796:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§`!#§);
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§8!K§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr804:
                                                                                                                                                                                          §"!>§.updatePigAnimations(param1);
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr743:
                                                                                                                                                                                                §§push(!§"!>§.camera.isOnCastleView());
                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop59;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr746:
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                if(_loc6_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop13;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr759:
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc6_ || _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop70;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr769:
                                                                                                                                                                                                         if(!(_loc6_ || _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop66;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc6_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr783:
                                                                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               addr791:
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop80;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr688:
                                                                                                                                                                                                                  §§push(§"!>§.camera.mCurrentAction == §%!-§.§ d§);
                                                                                                                                                                                                                  if(!(_loc5_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr695:
                                                                                                                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr705:
                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr714:
                                                                                                                                                                                                                              addr713:
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc6_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr804);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    this.§6A§(§-^§);
                                                                                                                                                                                                                                    addr734:
                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop116;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1701);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           loop101:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1042:
                                                                                                                                                                                                                                    if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1050:
                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc6_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop103:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1065:
                                                                                                                                                                                                                                                      if(_loc6_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         break loop117;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1080:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop93;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1090:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.§>u§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                     addr1097:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop65;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1092:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§^G§());
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop65;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1005:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1090:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1237);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop103;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1254:
                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1255:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop93;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1256:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(!§"!>§.objects.isPigsAlive());
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                  addr1135:
                                                                                                                                                                                                                                                                  addr1117:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                     addr1136:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                           break loop101;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop114;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1117:
                                                                                                                                                                                                                                                                  while(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                     loop86:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1080);
                                                                                                                                                                                                                                                                        §§push(!§"!>§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                                        addr926:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc5_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop3;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop86;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop3;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr746);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1254:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                   §§goto(addr1065);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop30:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                                                                                                                   addr1280:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                            addr1286:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                               addr1287:
                                                                                                                                                                                                                                                               while(_loc6_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                        addr1296:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§8!W§);
                                                                                                                                                                                                                                                                           addr1242:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop4;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop101;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1295:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1254);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1304:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         addr1305:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1058:
                                                                                                                                                                                                                                                addr1251:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr986:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§>u§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr999:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1407:
                                                                                                                                                                                                                                                         _loc4_ = §"!>§.activeObject;
                                                                                                                                                                                                                                                         if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1644:
                                                                                                                                                                                                                                                            §§push(Boolean(!_loc4_));
                                                                                                                                                                                                                                                            if(!Boolean(!_loc4_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1646:
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               addr1616:
                                                                                                                                                                                                                                                               addr1647:
                                                                                                                                                                                                                                                               §§push(_loc4_.§0o§ < _loc4_.§]!3§);
                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1621);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1638);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1644);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1621:
                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1623:
                                                                                                                                                                                                                                                               §§push(Boolean(_loc4_));
                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1629:
                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1638:
                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                        addr1639:
                                                                                                                                                                                                                                                                        §§push(_loc4_ is §3l§);
                                                                                                                                                                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1588:
                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1600:
                                                                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                 if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1608:
                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                       addr1609:
                                                                                                                                                                                                                                                                                       §§push(Boolean(!(_loc4_ as §4!G§).§2s§));
                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1565:
                                                                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1570:
                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                            addr1571:
                                                                                                                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                                                                                                                                               if(_loc6_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() >= 0);
                                                                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc6_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1495:
                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1515:
                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1517:
                                                                                                                                                                                                                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                this.§^!-§ = true;
                                                                                                                                                                                                                                                                                                                                                addr1527:
                                                                                                                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      this.§6A§(§;X§);
                                                                                                                                                                                                                                                                                                                                                      addr1437:
                                                                                                                                                                                                                                                                                                                                                      §"!>§.activeObject = null;
                                                                                                                                                                                                                                                                                                                                                      if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc6_ || this)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               this.§6A§(§;X§);
                                                                                                                                                                                                                                                                                                                                                               if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(false)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1437);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1648);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1609);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1437);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1517);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1470:
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1470);
                                                                                                                                                                                                                                                                                                                                                      addr1536:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1623);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1571);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1639);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1437);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1616);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1623);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1608);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1570);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1495);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1616);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1647);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1515);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1644);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1600);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1629);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1600);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1565);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1588);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1515);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1629);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1644);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1638);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1608);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1600);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1644);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1646);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1648:
                                                                                                                                                                                                                                                            §§goto(addr1701);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1536);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else if(§"!>§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§ A§ = §'[§;
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1238);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr972:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1153:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop64;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1153:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr961:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop65;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr985:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          loop52:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc6_ || this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop69;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop54:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      addr1197:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§^G§());
                                                                                                                                                                                                                                                         while(_loc6_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc6_ || _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop58;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                            while(_loc6_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop116;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this.§ A§ = §'[§;
                                                                                                                                                                                                                                                                  break loop79;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1694);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr585:
                                                                                                                                                                                                                                                            if(!(_loc6_ || _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr592:
                                                                                                                                                                                                                                                            if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1312:
                                                                                                                                                                                                                                                            while(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc2_ = §§pop();
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                                                                     addr1300:
                                                                                                                                                                                                                                                                     addr544:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                        break loop59;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc5_ && _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     loop130:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§#!3§ = 2000;
                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§ A§ = 0;
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                                                                                                                      §§push(this.§-o§);
                                                                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().§-o§ = §§pop();
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr423:
                                                                                                                                                                                                                                                                                                         loop126:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            loop127:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(!§"!>§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                                                               if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr377:
                                                                                                                                                                                                                                                                                                                        if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr392:
                                                                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr405:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                                                                addr413:
                                                                                                                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr415:
                                                                                                                                                                                                                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§"!>§.camera.mCurrentAction == §%!-§.§ d§);
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                               addr338:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     while(§§pop())
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              this.§6A§(§-^§);
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       break loop127;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr1171:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       this.§8!W§ = 15000;
                                                                                                                                                                                                                                                                                                                                                                                       addr1174:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          this.§3!^§ = true;
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1153);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr431:
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop127;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr431:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              addr349:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr926);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     break loop127;
                                                                                                                                                                                                                                                                                                                                                                     addr340:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1083);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr337:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr688);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1097);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr334:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(!§"!>§.objects.mSardineCanAdded);
                                                                                                                                                                                                                                                                                                                                                      addr1104:
                                                                                                                                                                                                                                                                                                                                                      while(_loc6_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                  addr1111:
                                                                                                                                                                                                                                                                                                                                                                  addr1303:
                                                                                                                                                                                                                                                                                                                                                                  while(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                     while(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1117);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1090);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1136);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1304);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1254);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr1109:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr695);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1135);
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr783);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1300);
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr415);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1148:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr901);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr743);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr405:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr340);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1114);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(!(_loc5_ && this))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                          while(_loc6_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop130;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(!_loc5_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§-o§);
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop8;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                            addr530:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr535:
                                                                                                                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop130;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1285);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           loop132:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr585);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       break loop130;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop132;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr577:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr961);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    continue loop132;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr673:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr578:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     addr535:
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr705);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1255);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr714);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr526:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§"!>§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                                                                                                                                                                                                                                         continue loop101;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1018:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1296);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc5_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop75;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop65;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr926);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1148);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                               break loop130;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop81;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1181:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1145:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1090);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop76;
                                                                                                                                                                                                                                                                                                                                          addr617:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1286);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr759);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr617);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr620);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                              addr441:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc6_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop126;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop117;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   this.§6A§(§-^§);
                                                                                                                                                                                                                                                                                                                                                   if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop119;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1677:
                                                                                                                                                                                                                                                                                                                                                   addr1677:
                                                                                                                                                                                                                                                                                                                                                   if(§"!>§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1684:
                                                                                                                                                                                                                                                                                                                                                         this.§#!3§ = 1000;
                                                                                                                                                                                                                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1694);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1694:
                                                                                                                                                                                                                                                                                                                                                      addr1694:
                                                                                                                                                                                                                                                                                                                                                      addr1694:
                                                                                                                                                                                                                                                                                                                                                      addr1694:
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1701);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      this.§6A§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr804);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1701);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1167);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1058);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1080);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr535);
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1153);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr986);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr440:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr535);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr405);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1280);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr377);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1701);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr522);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr522:
                                                                                                                                                                                                                                                                                                      addr504:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr655:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§#!3§);
                                                                                                                                                                                                                                                                                                   addr657:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break loop73;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc5_ && this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop4;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr673);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr668:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §"!>§.updatePigAnimations(param1);
                                                                                                                                                                                                                                                                                                         §§goto(addr431);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr578);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr431);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr668);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr623);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr734);
                                                                                                                                                                                                                                                                                       addr509:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1407);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1256);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1174);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1694);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§]!B§.§>F§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr440);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                           continue loop52;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop77;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr945:
                                                                                                                                                                                                                                                                  while(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop65;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr592);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1326);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop54;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop64;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1171);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr185:
                                                                                                                                                                                                                                                if(_loc5_ && this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc6_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr202:
                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                      if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop123:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               addr211:
                                                                                                                                                                                                                                                               while(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§"!>§.camera.mCurrentAction == §%!-§.§ d§);
                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(!§§pop());
                                                                                                                                                                                                                                                                              if(!(_loc6_ || param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop123;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr57:
                                                                                                                                                                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                       continue loop123;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr577);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr405);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc6_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop77;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                       if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr185);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr392);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr202);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                    §§goto(addr57);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr159:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr769);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr530);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr441);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr337);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr57);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr676);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr90);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1111);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1303);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1302:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1287);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1050:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1050);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1295);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1145);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1109);
                                                                                                                                                                                                                              §§goto(addr1042);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1209);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1107);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr746);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1305);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1104);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1005);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr713);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1050);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1255);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1097);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr945);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§`!#§);
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§;X§);
                                                                                                                                                                                          if(!(_loc5_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1653:
                                                                                                                                                                                          addr1653:
                                                                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1656);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1694);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1701);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1651:
                                                                                                                                                                                    §§goto(addr1653);
                                                                                                                                                                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§'!4§);
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1407);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1694);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1651);
                                                                                                                                                                                    §§push(this.§`!#§);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1701);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1653);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1656);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr796);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop72;
                                                                                                                                                               }
                                                                                                                                                               continue loop2;
                                                                                                                                                            }
                                                                                                                                                            continue loop78;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§"!>§.objects.mMightyEagleTimer > 5500);
                                                                                                                                                            break loop66;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1117);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      break loop65;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr985);
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1312);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1181);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr1242);
                                                                                                   }
                                                                                                   if(§§pop() <= §§pop())
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         §§goto(addr1677);
                                                                                                      }
                                                                                                   }
                                                                                                   addr1701:
                                                                                                   return;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1233);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr1302);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr1328);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1341);
                              }
                           }
                           break;
                        }
                        §§goto(addr1659);
                     }
                  }
                  §§goto(addr1341);
               }
            }
         }
         §§goto(addr1656);
      }
      
      protected function §>u§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§3!^§);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  this.§3!^§ = true;
               }
               while(true)
               {
               }
               addr131:
            }
            loop1:
            while(true)
            {
               §§push(new Date().time - §"!>§.slingshot.timeOfLastBirdShot);
               loop2:
               while(true)
               {
                  §§push(6000);
                  loop3:
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        while(true)
                        {
                           addr91:
                           if(_loc3_)
                           {
                              §§goto(addr103);
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§"!>§.slingshot.mDragging)
                        {
                           loop6:
                           while(true)
                           {
                              if(§"!>§.objects.isWorldAtSleep())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       this.§8!W§ = Math.min(this.§8!W§,3500);
                                    }
                                 }
                                 while(true)
                                 {
                                 }
                                 addr84:
                              }
                              while(true)
                              {
                                 §§push(this.§8!W§);
                                 if(!_loc4_)
                                 {
                                    §§push(0);
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc4_)
                                                {
                                                   continue loop1;
                                                }
                                                this.§6A§(param1,param2);
                                             }
                                             else
                                             {
                                                §§goto(addr84);
                                             }
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                              return;
                           }
                        }
                        §§goto(addr91);
                     }
                     addr103:
                     return;
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §;!5§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§`!#§);
            loop0:
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && param1))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr302:
                                 while(true)
                                 {
                                    §§push(this.§`!#§);
                                    addr273:
                                    while(true)
                                    {
                                       §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                       addr275:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          addr276:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                 }
                              }
                              addr301:
                           }
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop12:
                                 while(_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop13:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          addr283:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                          addr283:
                                       }
                                       else
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                while(_loc3_ || param1)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(_loc3_)
                                                         {
                                                            §§pop();
                                                            loop20:
                                                            while(_loc3_ || this)
                                                            {
                                                               §§push(param1);
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     continue loop18;
                                                                     addr92:
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        addr100:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc3_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr117:
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc2_ && _loc3_))
                                                                                          {
                                                                                             if(!(_loc2_ && param1))
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§pop();
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   addr214:
                                                                                                   §§push(this.§`!#§);
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!(_loc3_ || param1))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!(_loc2_ && this))
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      addr225:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            while(_loc3_ || this)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            §§goto(addr283);
                                                                                                         }
                                                                                                         §§goto(addr275);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                   }
                                                                                                   addr214:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(this.§#!3§ <= 0);
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   §§goto(addr302);
                                                                                                   addr206:
                                                                                                }
                                                                                                §§goto(addr273);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr276);
                                                                                          addr82:
                                                                                          §§push(!§§pop());
                                                                                          if(!(_loc2_ && param1))
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr92);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr100);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              addr205:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                              §§goto(addr206);
                                                                           }
                                                                        }
                                                                        addr102:
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop11;
                                                      }
                                                      §§goto(addr102);
                                                   }
                                                }
                                                continue loop12;
                                             }
                                          }
                                       }
                                    }
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
         while(true)
         {
            §§goto(addr214);
            §§goto(addr283);
         }
      }
      
      public function §?Z§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§`!#§);
            if(!_loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        if(_loc1_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(_loc1_ || _loc1_)
                           {
                           }
                        }
                        §§goto(addr83);
                     }
                     §§pop();
                     addr74:
                     §§push(this.§`!#§ == §'z§);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
                  addr83:
                  return §§pop();
               }
            }
         }
         §§goto(addr74);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1.delta != 0)
            {
               if(_loc3_ || _loc3_)
               {
                  this.doUserZoom(param1.delta > 0);
               }
            }
         }
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6'§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(!§"!>§.mReadyToRun);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop17:
                                       while(_loc3_ || param1)
                                       {
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue loop5;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(Boolean(§§pop()));
                                          loop18:
                                          while(_loc3_)
                                          {
                                             §§push(§§pop());
                                             loop19:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc2_ && param1)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                   loop20:
                                                   while(!_loc2_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop21:
                                                         while(!_loc2_)
                                                         {
                                                            §§pop();
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §§push(this.§`!#§);
                                                               addr153:
                                                               loop23:
                                                               for(; _loc3_ || _loc2_; §§push(this.§`!#§),if(_loc2_ && param1)
                                                               {
                                                                  continue;
                                                               },§§goto(addr54))
                                                               {
                                                                  §§push(§8!K§);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(_loc2_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                              loop26:
                                                                              while(_loc3_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr188:
                                                                                          addr142:
                                                                                          addr71:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             addr242:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§"!>§.slingshot.mDragging));
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      break loop20;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                break loop28;
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          addr149:
                                                                                          if(!(_loc2_ && param1))
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(!(_loc2_ && param1))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc2_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc3_ || param1)
                                                                                                                     {
                                                                                                                        addr113:
                                                                                                                        §§push(!§"!>§.isPlayingReplay());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §"!>§.changeReplaySpeed(param1);
                                                                                                                                 if(!(_loc2_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr20);
                                                                                                                                    }
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 addr140:
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr188);
                                                                                                                                 }
                                                                                                                                 §§goto(addr142);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop18;
                                                                                                                           §§goto(addr113);
                                                                                                                        }
                                                                                                                        addr117:
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr277);
                                                                                                                        }
                                                                                                                        §"!>§.camera.adjustManualScale(param1);
                                                                                                                        §§goto(addr140);
                                                                                                                        addr117:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§"!>§.camera.mDragging));
                                                                                                                        addr197:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           break loop25;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr268:
                                                                                                                  }
                                                                                                                  addr199:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr20);
                                                                                                         }
                                                                                                         addr97:
                                                                                                      }
                                                                                                      §§goto(addr117);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                             continue loop26;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§goto(addr268);
                                                                                       }
                                                                                       addr267:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr97);
                                                                                    }
                                                                                    addr20:
                                                                                    return;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§push(this.§`!#§);
                                                                              break loop23;
                                                                           }
                                                                           §§goto(addr199);
                                                                        }
                                                                     }
                                                                     §§push(§-^§);
                                                                     addr54:
                                                                     break;
                                                                     if(!(_loc3_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§goto(addr71);
                                                                     }
                                                                     §§goto(addr117);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr204);
                                                                  §§goto(addr153);
                                                               }
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   while(_loc3_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   continue loop3;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr267);
                                                   }
                                                   §§goto(addr197);
                                                }
                                             }
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr277:
                                                return;
                                             }
                                             §§goto(addr242);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr276);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §]!,§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§+L§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(!_loc5_)
         {
            §§push(this.§6'§);
            if(!(_loc5_ && param1))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc5_ && param1))
               {
                  §§goto(addr40);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(_loc6_ || this)
            {
               dispatchEvent(_loc3_);
               loop0:
               while(true)
               {
                  if(_loc3_.isDefaultPrevented())
                  {
                     if(!(_loc5_ && param2))
                     {
                        if(_loc6_)
                        {
                           return;
                        }
                        continue;
                     }
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        §§push(§3r§.§#!9§());
                        while(true)
                        {
                           §§pop();
                           if(_loc6_ || param1)
                           {
                              §§push(this.§;!5§(false));
                              loop3:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    return;
                                 }
                                 do
                                 {
                                    §§push(!§"!>§.isPlayingReplay());
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §"!>§.camera.startDragging(param1,param2);
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§goto(addr335);
                                          }
                                          break loop0;
                                       }
                                       if(_loc5_)
                                       {
                                          addr335:
                                          §"!>§.resetReplaySpeed();
                                          break loop0;
                                       }
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       if(!_loc5_)
                                       {
                                          §§push(Boolean(§"!>§.activeObject));
                                          continue loop3;
                                       }
                                       §§goto(addr335);
                                    }
                                 }
                                 while(_loc6_);
                                 
                                 continue loop1;
                              }
                           }
                           break loop0;
                        }
                     }
                  }
                  §§goto(addr335);
               }
               return;
            }
            §§goto(addr238);
         }
         addr40:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!(_loc5_ && this))
         {
            §§push(this.§6'§);
            if(_loc4_ || this)
            {
               §§push(!§§pop());
               if(_loc4_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§push(§3r§.§7!i§());
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              if(this.§`!#§ == §!>§)
                              {
                                 if(_loc4_ || param2)
                                 {
                                    if(_loc5_ && param1)
                                    {
                                       §§goto(addr84);
                                    }
                                    this.§6A§(§-^§);
                                    if(!_loc5_)
                                    {
                                       if(false)
                                       {
                                          continue;
                                       }
                                       addr93:
                                       if(§"!>§.slingshot.mDragging)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             _loc3_ = §"!>§.screenToBox2D(param1,param2);
                                             if(_loc4_)
                                             {
                                                §"!>§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                                while(true)
                                                {
                                                   if(!§"!>§.slingshot.canShootTheBird())
                                                   {
                                                      §"!>§.slingshot.cancelDragging();
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr142);
                                                         }
                                                         addr183:
                                                         if(§"!>§.camera.mDragging)
                                                         {
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               addr195:
                                                               §§push(!isNaN(param1));
                                                               if(_loc4_ || param2)
                                                               {
                                                                  break loop0;
                                                               }
                                                               §§push(§§pop());
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc4_ || param2)
                                                                     {
                                                                        §§push(!isNaN(param2));
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr270:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc4_ || param2)
                                                                              {
                                                                                 addr278:
                                                                                 §"!>§.camera.dragToNewPoint(param1,param2);
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    addr239:
                                                                                    while(true)
                                                                                    {
                                                                                       §"!>§.camera.stopDragging();
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          break loop5;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 return;
                                                                                 addr285:
                                                                                 addr262:
                                                                              }
                                                                              §§goto(addr285);
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        §§goto(addr270);
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                               }
                                                               §§goto(addr270);
                                                            }
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      break;
                                                   }
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue;
                                                      }
                                                      §"!>§.slingshot.shoot();
                                                   }
                                                   loop2:
                                                   while(true)
                                                   {
                                                      addr142:
                                                      while(true)
                                                      {
                                                         this.§6A§(§'!4§);
                                                         continue loop2;
                                                      }
                                                   }
                                                   §§goto(addr183);
                                                }
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr171);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr262);
                                 }
                                 §§goto(addr195);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr278);
                        }
                        break;
                     }
                     §§push(Boolean(§§pop()));
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr195);
                     }
                     §§goto(addr270);
                  }
                  addr84:
                  return;
               }
            }
         }
         §§goto(addr195);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!(_loc4_ && param1))
         {
            §§push(this.§6'§);
            if(!_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§goto(addr35);
               }
               else
               {
                  addr104:
                  §"!>§.camera.dragToNewPoint(param1,param2);
               }
            }
            else if(§"!>§.slingshot.mDragging)
            {
               if(_loc5_ || this)
               {
                  _loc3_ = §"!>§.screenToBox2D(param1,param2);
                  if(_loc5_ || _loc3_)
                  {
                     §"!>§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!_loc4_)
                     {
                        addr111:
                        this.§!-§ = param1;
                        if(!_loc4_)
                        {
                           addr116:
                           this.§ `§ = param2;
                        }
                        return;
                        addr96:
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr96);
               }
            }
            else if(§"!>§.camera.mDragging)
            {
               if(_loc5_)
               {
                  §§goto(addr104);
               }
            }
            §§goto(addr111);
         }
         addr35:
      }
      
      public function §%!Y§() : Point
      {
         return new Point(this.§!-§,this.§ `§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4!!§.assign(this.§4!!§.getValue() + param1);
            while(true)
            {
               this.§=!_§(§!r§);
               while(!_loc2_)
               {
                  do
                  {
                     this.§#!3§ = 2000;
                     do
                     {
                        this.§-o§ = §-]§;
                     }
                     while(!(_loc3_ || this));
                     
                  }
                  while(!_loc3_);
                  
                  if(_loc3_)
                  {
                     §§goto(addr20);
                  }
               }
            }
         }
         while(this.§`!#§ == §;X§)
         {
            §§goto(addr67);
         }
         addr20:
      }
      
      override public function getScore() : int
      {
         return this.§4!!§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(§]!B§.§>F§.objects.mMightyEagleAdded);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc3_ && this))
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr69:
                  §§push(LevelManager.§;!a§(LevelManager.§var§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr69);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§6'§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6'§ = param1;
         }
      }
   }
}
