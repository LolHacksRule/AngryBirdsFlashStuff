package §#!`§
{
   import §#!I§.§0k§;
   import §%!B§.§0![§;
   import §24§.§=!L§;
   import §4!i§.§@t§;
   import §@!"§.§>S§;
   import §@!"§.§@_§;
   import §@!"§.§[!J§;
   import §@!"§.§^"2§;
   import §@V§.§#=§;
   import §@V§.§0"§;
   import §[!Z§.§>D§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §3!o§ extends §+!i§
   {
      
      public static const §3"6§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §#!J§:int = 2;
      
      public static const §[!p§:int = 3;
      
      public static const §&!k§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §5!§:int = 7;
      
      public static const §9"1§:Number = 2000;
      
      public static const §"x§:Number = 2500;
      
      public static const §#"2§:int = 5;
      
      private static const §2H§:Number = 0.001;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §3"6§ = 0;
            loop0:
            while(true)
            {
               LEVEL_STATE_SLINGSHOT = 1;
               loop1:
               while(true)
               {
                  §#!J§ = 2;
                  while(true)
                  {
                     §[!p§ = 3;
                     loop3:
                     while(_loc2_)
                     {
                        §&!k§ = 4;
                        while(true)
                        {
                           LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                           while(_loc2_)
                           {
                              LEVEL_STATE_VICTORY2_END = 6;
                              continue loop1;
                              addr61:
                              if(!(_loc1_ && §3!o§))
                              {
                                 §#"2§ = 5;
                                 while(_loc2_)
                                 {
                                    §§push(§§findproperty(§2H§));
                                    §§push(§0k§.§<"2§);
                                    if(!_loc1_)
                                    {
                                       §§push(§§pop() / 100);
                                    }
                                    §§pop().§2H§ = §§pop();
                                    if(_loc1_ && §3!o§)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       return;
                                    }
                                    while(_loc2_)
                                    {
                                       §§goto(addr61);
                                    }
                                    continue loop1;
                                    addr59:
                                 }
                                 while(_loc2_ || §3!o§)
                                 {
                                    §"x§ = 2500;
                                    §§goto(addr59);
                                 }
                                 while(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       §9"1§ = 2000;
                                       §§goto(addr83);
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 addr83:
                                 continue loop3;
                                 addr95:
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
            §5!§ = 7;
            §§goto(addr95);
         }
      }
      
      protected var §!!l§:int = 0;
      
      protected var §!!m§:Number;
      
      protected var §,!F§:Number = 0;
      
      protected var §1c§:Boolean = false;
      
      protected var §[!x§:Number = 0;
      
      private var §9!Q§:Number = 0;
      
      private var §@!§:int = 0;
      
      private var §5!c§:Number = 0;
      
      private var §>!§:Number = 0;
      
      protected var §8"'§:Boolean = true;
      
      protected var §;q§:§@t§;
      
      protected var §0!U§:Point;
      
      public function §3!o§(param1:§#=§, param2:§0![§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§;q§ = new §@t§();
            while(true)
            {
               this.§0!U§ = new Point();
               while(!(_loc4_ && this))
               {
                  super(param1,param2);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public function get §import§() : int
      {
         return this.§!!l§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            loop0:
            while(true)
            {
               this.§;q§.§!8§(0);
               loop1:
               while(true)
               {
                  this.§!!l§ = -1;
                  while(true)
                  {
                     this.§@!§ = 0;
                     loop3:
                     while(!_loc1_)
                     {
                        this.§,!F§ = 0;
                        while(_loc2_)
                        {
                           this.§1c§ = false;
                           loop6:
                           while(!(_loc1_ && _loc2_))
                           {
                              this.§!!m§ = §9"1§;
                              loop7:
                              while(true)
                              {
                                 §,P§(true);
                                 loop8:
                                 while(_loc2_)
                                 {
                                    §!`§.objects.setCollisionsEnabled(true);
                                    loop9:
                                    for(; _loc2_ || _loc1_; if(_loc2_ || this)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             return;
                                          }
                                          continue loop1;
                                       }
                                       continue loop7;
                                    })
                                    {
                                       if(!_loc1_)
                                       {
                                          §!`§.objects.setGroundTextureEnabled(true);
                                          while(_loc2_)
                                          {
                                             §!`§.slingshot.addEventListener(§0"§.§=!f§,this.§,t§);
                                             if(_loc2_)
                                             {
                                                continue loop9;
                                             }
                                          }
                                          continue loop3;
                                       }
                                       addr112:
                                       while(true)
                                       {
                                          this.changeGameState(§3"6§);
                                          break loop8;
                                       }
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      private function §,t§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.changeGameState(§#!J§);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1 = §!`§.update(param1,true);
            while(true)
            {
               this.§^!5§(param1);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§5d§(param1);
            if(!(_loc3_ && this))
            {
               if(!(_loc3_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §^!5§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§@!§ != 0)
            {
               if(_loc2_)
               {
                  §!`§.camera.adjustManualScale(this.§@!§ > 0,param1 * §2H§);
               }
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §!`§.clearLevel();
            while(true)
            {
               removeEventListeners();
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§!!l§ = -1;
            if(!(_loc1_ && _loc2_))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
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
      
      public function §catch§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(§!`§.camera.mCurrentCameraSliderLocation >= §0k§.§-!m§)
            {
               loop0:
               while(!§!`§.objects.isWorldAtSleep())
               {
                  if(_loc2_)
                  {
                     if(!(_loc2_ || _loc1_))
                     {
                        while(true)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     §§push(false);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(!_loc1_)
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
         §§goto(addr86);
      }
      
      public function §1!7§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§0k§ = §!`§.camera;
         if(_loc4_ || param1)
         {
            §§push(_loc2_.§&!V§);
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
                     §§push(_loc2_.§&!V§);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§&!V§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§6!W§(false));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr383:
                        while(true)
                        {
                           §§push(param2);
                           addr359:
                           while(true)
                           {
                              §§push(!§§pop());
                           }
                        }
                     }
                     addr382:
                  }
                  loop5:
                  while(true)
                  {
                     loop6:
                     for(; !§§pop(); if(_loc4_ && _loc3_)
                     {
                        continue;
                     },if(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           if(!§§pop())
                           {
                              if(_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          §!`§.camera.goToBirdView();
                                          §§goto(addr176);
                                       }
                                       §§goto(addr301);
                                    }
                                    §§goto(addr292);
                                 }
                                 §§goto(addr242);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr382);
                     },§§goto(addr359))
                     {
                        loop7:
                        while(true)
                        {
                           §§push(param1);
                           while(true)
                           {
                              §§push(§3"6§);
                              loop9:
                              while(§§pop() != §§pop())
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_SLINGSHOT);
                                    loop11:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(param1);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§#!J§);
                                          loop13:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(param1);
                                             loop14:
                                             while(true)
                                             {
                                                §§push(§[!p§);
                                                addr310:
                                                addr318:
                                                loop15:
                                                while(true)
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         break;
                                                         addr297:
                                                      }
                                                      §§push(param1);
                                                      while(_loc3_)
                                                      {
                                                         §§push(§&!k§);
                                                         while(§§pop() != §§pop())
                                                         {
                                                            §§push(param1);
                                                            continue loop14;
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     this.§&!@§();
                                                                     addr132:
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           this.§[!x§ = 1200;
                                                                           loop36:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §!`§.camera.goToCastleView();
                                                                                    loop37:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §!`§.objects.makePigsSmile(5);
                                                                                                   addr55:
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§!!l§ = param1;
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         if(!(_loc3_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop37;
                                                                                                         }
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop36;
                                                                                                         }
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §!`§.slingshot.makeBirdsJumpForJoy();
                                                                                                                  break;
                                                                                                               }
                                                                                                            }
                                                                                                            addr137:
                                                                                                            this.playWinningSoundVictory1();
                                                                                                            addr176:
                                                                                                            break loop37;
                                                                                                            addr145:
                                                                                                            addr176:
                                                                                                         }
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  break loop13;
                                                                                                               }
                                                                                                               §§push(this.§3!x§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §!`§.camera.goToBirdView();
                                                                                                                              addr242:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    break loop26;
                                                                                                                                 }
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    this.playWinningSoundVictory2();
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                                 addr356:
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                              addr274:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr237:
                                                                                                                     }
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  break loop11;
                                                                                                               }
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            addr285:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr304:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc4_ && param1)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!(_loc4_ && param2))
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     this.§[!x§ = 1200;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§3!x§);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        §§goto(addr229);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §!`§.camera.goToCastleView();
                                                                                                                        §§goto(addr285);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§9!Q§ = §#"2§;
                                                                                                               §§goto(addr292);
                                                                                                            }
                                                                                                            addr304:
                                                                                                            addr204:
                                                                                                         }
                                                                                                         §§goto(addr237);
                                                                                                         §§goto(addr280);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr55);
                                                                                                      }
                                                                                                   }
                                                                                                   return;
                                                                                                   addr23:
                                                                                                }
                                                                                                addr326:
                                                                                                §§goto(addr23);
                                                                                                addr326:
                                                                                             }
                                                                                             §§goto(addr225);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr132);
                                                                                    }
                                                                                    §§goto(addr23);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr145);
                                                                           }
                                                                           addr136:
                                                                           §§goto(addr23);
                                                                           addr321:
                                                                        }
                                                                        break loop9;
                                                                     }
                                                                     break loop15;
                                                                  }
                                                                  §!`§.particles.moveTrailsNewToOld();
                                                                  §§goto(addr326);
                                                                  addr338:
                                                               }
                                                               §§goto(addr132);
                                                            }
                                                            §§goto(addr23);
                                                         }
                                                         this.§[!x§ = 2000;
                                                         §§goto(addr304);
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop13;
                                                }
                                                §!`§.camera.goToCastleView();
                                                §§goto(addr321);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                break loop6;
                                             }
                                             this.§[!x§ = 5000;
                                             §§goto(addr338);
                                          }
                                          §§goto(addr326);
                                       }
                                    }
                                    while(true)
                                    {
                                       §!`§.camera.goToBirdView();
                                       §§goto(addr348);
                                    }
                                 }
                              }
                              this.§[!x§ = 2000;
                              §§goto(addr356);
                           }
                        }
                     }
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           break loop5;
                        }
                        §§goto(addr383);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr304);
      }
      
      protected function playWinningSoundVictory1() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>D§.§>!%§();
         }
         do
         {
            §>D§.§9!q§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         while(_loc1_);
         
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function §&!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>D§.§>!%§();
            do
            {
               §>D§.§9!q§("LevelFailedPigs1");
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §?!Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§[!x§ = 2000;
         }
         while(true)
         {
            this.§1c§ = false;
            while(!(_loc2_ && this))
            {
               this.§,!F§ = 2000;
               while(!_loc2_)
               {
                  this.changeGameState(§3!o§.LEVEL_STATE_SLINGSHOT,true);
                  if(_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §@!J§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§,!F§ = Math.max(this.§,!F§,param1);
         }
      }
      
      public function §6!r§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§!`§.slingshot.mSlingShotState == §0"§.§%!T§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     addr61:
                     §§pop();
                     return !§!`§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §5d§(param1:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = false;
         var _loc4_:§[!J§ = null;
         var _loc5_:* = false;
         var _loc6_:§^"2§ = null;
         if(_loc8_)
         {
            §§push(this);
            §§push(this.§!!m§);
            if(_loc8_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§!!m§ = §§pop();
            if(_loc8_)
            {
               §§push(this.§1c§);
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(this);
                        §§push(this.§,!F§);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§,!F§ = §§pop();
                        while(true)
                        {
                           §§push(this.§,!F§);
                           if(_loc8_)
                           {
                              §§push(0);
                              loop1:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.§!!m§ = 0;
                                       if(_loc8_ || _loc2_)
                                       {
                                          addr454:
                                          loop26:
                                          while(true)
                                          {
                                             §§push(this.§!!m§);
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(0);
                                                if(!_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§§pop() <= §§pop());
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      §§push(§§pop());
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop28:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(_loc8_)
                                                               {
                                                                  §§push(this.§6!W§(false));
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     addr438:
                                                                     while(true)
                                                                     {
                                                                        while(§§pop())
                                                                        {
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              §§push(-1);
                                                                              if(_loc8_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    this.§!!m§ = §9"1§;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§!`§.objects.isWorldAtSleep()));
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          if(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr986:
                                                                                             addr986:
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   loop15:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                                                            break;
                                                                                                         }
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§[!x§ = 0;
                                                                                                            addr1164:
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr1140:
                                                                                                               addr895:
                                                                                                               loop18:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§!!l§);
                                                                                                                  addr1143:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§[!p§);
                                                                                                                     loop20:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() != §§pop())
                                                                                                                        {
                                                                                                                           §§push(this.§!!l§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§&!k§);
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(§§pop() != §§pop())
                                                                                                                              {
                                                                                                                                 §§push(this.§!!l§);
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr1070:
                                                                                                                              §§push(this.§[!x§);
                                                                                                                              §§push(0);
                                                                                                                              if(!(_loc7_ && param1))
                                                                                                                              {
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    §!`§.updatePigAnimations(param1);
                                                                                                                                    addr966:
                                                                                                                                    if(_loc7_ && param1)
                                                                                                                                    {
                                                                                                                                       break loop15;
                                                                                                                                    }
                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                    {
                                                                                                                                       addr980:
                                                                                                                                       loop7:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(!§!`§.camera.isOnCastleView());
                                                                                                                                          loop8:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                addr948:
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc8_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr955:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr956:
                                                                                                                                                      §§pop();
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         addr922:
                                                                                                                                                         addr923:
                                                                                                                                                         §§push(§!`§.camera.mCurrentAction != §0k§.§^!z§);
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr956);
                                                                                                                                                         }
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            addr927:
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr929:
                                                                                                                                                               if(!(_loc8_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  this.§!!m§ = 0;
                                                                                                                                                                  addr1060:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§9!Q§);
                                                                                                                                                                        if(_loc8_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§9!Q§ = §§pop();
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc8_ || _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop7;
                                                                                                                                                                              }
                                                                                                                                                                              addr960:
                                                                                                                                                                              addr1024:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr1178:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§[!x§);
                                                                                                                                                                                 addr1152:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(_loc7_ && _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1160:
                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop2;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1301:
                                                                                                                                                                                          break loop20;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1267:
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop16;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr1178:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1301);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr1114:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§9!Q§);
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              break loop26;
                                                                                                                                                                           }
                                                                                                                                                                           addr1266:
                                                                                                                                                                           §§goto(addr1267);
                                                                                                                                                                        }
                                                                                                                                                                        addr1114:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1267);
                                                                                                                                                                     §§goto(addr1060);
                                                                                                                                                                  }
                                                                                                                                                                  addr1060:
                                                                                                                                                                  addr1122:
                                                                                                                                                                  addr1124:
                                                                                                                                                                  addr1123:
                                                                                                                                                                  if(§!`§.camera.mCurrentAction != §0k§.§^!z§)
                                                                                                                                                                  {
                                                                                                                                                                     break loop33;
                                                                                                                                                                  }
                                                                                                                                                                  break loop20;
                                                                                                                                                                  addr1139:
                                                                                                                                                                  addr1029:
                                                                                                                                                               }
                                                                                                                                                               this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                            }
                                                                                                                                                            break loop20;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1122);
                                                                                                                                                         addr959:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1301);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr927);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             addr1111:
                                                                                                                                             loop9:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                addr1112:
                                                                                                                                                loop10:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr1113:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         §§goto(addr1114);
                                                                                                                                                      }
                                                                                                                                                      addr1113:
                                                                                                                                                   }
                                                                                                                                                   addr1046:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§3!x§);
                                                                                                                                                            continue loop14;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc7_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               addr1145:
                                                                                                                                                               §!`§.updatePigAnimations(param1);
                                                                                                                                                               addr1136:
                                                                                                                                                               §§push(!§!`§.camera.isOnCastleView());
                                                                                                                                                               §§push(!§!`§.camera.isOnCastleView());
                                                                                                                                                               break loop8;
                                                                                                                                                               addr1148:
                                                                                                                                                            }
                                                                                                                                                            this.§[!x§ = 2000;
                                                                                                                                                            §§goto(addr1060);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr1264:
                                                                                                                                                            §§push(this.§[!x§);
                                                                                                                                                         }
                                                                                                                                                         addr828:
                                                                                                                                                         if(_loc8_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr836:
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                               §§push(§!`§.camera.mCurrentAction == §0k§.§^!z§);
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc7_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_ && _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop14;
                                                                                                                                                                     }
                                                                                                                                                                     addr721:
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              addr728:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.changeGameState(§[!p§);
                                                                                                                                                                                          if(!(_loc7_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr836);
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc7_ && _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc8_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(false)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr768:
                                                                                                                                                                                                   break loop20;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1179:
                                                                                                                                                                                                break loop20;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1070);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1281:
                                                                                                                                                                                          this.§[!x§ = 1000;
                                                                                                                                                                                          if(_loc8_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1301);
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop20;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr966);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr793:
                                                                                                                                                                                    if(!(_loc7_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Boolean(§!`§.camera.isOnCastleView()));
                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr929);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1264);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1179);
                                                                                                                                                                              addr727:
                                                                                                                                                                           }
                                                                                                                                                                           addr1085:
                                                                                                                                                                           if(_loc8_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc7_ && _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop10;
                                                                                                                                                                              }
                                                                                                                                                                              _loc5_ = §§pop();
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc7_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1136);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1113);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1124);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1113);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr922);
                                                                                                                                                                  }
                                                                                                                                                                  addr824:
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop8;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr828);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr923);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr721);
                                                                                                                                                            }
                                                                                                                                                            break loop33;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1266);
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr1138:
                                                                                                                                             §§pop();
                                                                                                                                             §§goto(addr1139);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1123);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1060);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1085);
                                                                                                                                 §§push(Boolean(§!`§.objects.hasBirds()));
                                                                                                                              }
                                                                                                                              §§goto(addr1267);
                                                                                                                           }
                                                                                                                           if(§§pop() == §§pop())
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§goto(addr1264);
                                                                                                                              }
                                                                                                                              §§goto(addr1281);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr1145);
                                                                                                                     }
                                                                                                                     §§goto(addr1306);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && this))
                                                                                                                        {
                                                                                                                           §§goto(addr768);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1029);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr939);
                                                                                                                  }
                                                                                                                  addr1306:
                                                                                                                  return;
                                                                                                                  §§goto(addr859);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1148);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr960);
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          break loop28;
                                                                                       }
                                                                                       §§goto(addr1301);
                                                                                       addr43:
                                                                                       if(_loc7_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          loop42:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§9!x§());
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!(_loc8_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            §§push(this.§6!r§());
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§goto(addr544);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!(_loc7_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr86:
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     this.§&! §(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                     if(_loc8_ || this)
                                                                                                                     {
                                                                                                                        §§goto(addr43);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr547);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr936);
                                                                                                               }
                                                                                                               §§goto(addr1143);
                                                                                                            }
                                                                                                            §§goto(addr86);
                                                                                                         }
                                                                                                         §§goto(addr936);
                                                                                                         §§goto(addr626);
                                                                                                      }
                                                                                                      §§goto(addr956);
                                                                                                      addr71:
                                                                                                   }
                                                                                                   §§goto(addr1060);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     continue loop42;
                                                                                                                  }
                                                                                                                  §§goto(addr686);
                                                                                                               }
                                                                                                               §§goto(addr986);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr71);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr319);
                                                                                                         }
                                                                                                         §§goto(addr1164);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr955);
                                                                                                   addr97:
                                                                                                }
                                                                                                §§goto(addr1164);
                                                                                             }
                                                                                             §§goto(addr986);
                                                                                          }
                                                                                          §§goto(addr121);
                                                                                       }
                                                                                       §§goto(addr626);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1145);
                                                                              }
                                                                              §§goto(addr1184);
                                                                           }
                                                                           §§goto(addr959);
                                                                        }
                                                                        §§push(this);
                                                                        §§push(this.§[!x§);
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           §§push(§§pop() - param1);
                                                                        }
                                                                        §§pop().§[!x§ = §§pop();
                                                                        §§goto(addr1178);
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr1060);
                                                         }
                                                         §§goto(addr438);
                                                         if(!(_loc8_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc7_ && this))
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     §§push(this.§"!k§);
                                                                     if(_loc8_)
                                                                     {
                                                                        addr96:
                                                                        §§goto(addr97);
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     §§goto(addr948);
                                                                  }
                                                                  §§goto(addr1057);
                                                               }
                                                               §§goto(addr222);
                                                            }
                                                            §§goto(addr678);
                                                         }
                                                         §§goto(addr96);
                                                      }
                                                   }
                                                   §§goto(addr544);
                                                }
                                                addr887:
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      §§goto(addr895);
                                                   }
                                                   §§goto(addr1190);
                                                }
                                                §§goto(addr768);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(0);
                                             if(!_loc7_)
                                             {
                                                §§goto(addr1046);
                                                §§push(§§pop() > §§pop());
                                             }
                                             §§goto(addr1267);
                                          }
                                          addr454:
                                       }
                                       break;
                                    }
                                    if(§!`§.slingshot.updateScoreForRemainingBirds())
                                    {
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§goto(addr1281);
                                       }
                                       §§goto(addr1301);
                                    }
                                    else
                                    {
                                       this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
                                    }
                                    §§goto(addr1306);
                                 }
                                 §§goto(addr454);
                              }
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(0);
                           if(!_loc7_)
                           {
                              §§goto(addr887);
                           }
                           §§goto(addr1267);
                           §§goto(addr877);
                        }
                        §§goto(addr1190);
                     }
                     §§goto(addr1178);
                  }
                  §§goto(addr454);
               }
               §§goto(addr1060);
            }
            §§goto(addr696);
         }
         §§goto(addr1190);
      }
      
      protected function §9!x§() : Boolean
      {
         return this.§3!x§;
      }
      
      protected function get §3!x§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§+!@§())
            {
               if(!_loc1_)
               {
                  addr49:
                  §§push(true);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      protected function get §"!k§() : Boolean
      {
         return true;
      }
      
      public function §+!@§() : §[!J§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§[!J§ = null;
         var _loc1_:* = int(§!`§.objects.objectCount - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §!`§.objects.getObject(_loc1_) as §[!J§;
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  if(!_loc3_)
                  {
                     return _loc2_;
                  }
                  continue;
               }
            }
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
         return null;
      }
      
      public function §;`§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>S§ = null;
         var _loc1_:* = int(§!`§.objects.objectCount - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §!`§.objects.getObject(_loc1_) as §>S§;
            if(!(_loc3_ && _loc3_))
            {
               if(_loc2_)
               {
                  if(!(_loc3_ && this))
                  {
                     return true;
                  }
                  continue;
               }
            }
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
         return false;
      }
      
      protected function §&! §(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!this.§1c§)
            {
               addr135:
               while(true)
               {
                  this.§1c§ = true;
                  addr138:
                  while(true)
                  {
                  }
               }
               addr135:
            }
            loop0:
            while(true)
            {
               §§push(new Date().time - §!`§.slingshot.timeOfLastBirdShot);
               loop1:
               while(true)
               {
                  §§push(6000);
                  loop2:
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc4_ && param2))
                        {
                           break;
                        }
                        while(true)
                        {
                        }
                        addr131:
                     }
                     while(true)
                     {
                        if(!§!`§.slingshot.mDragging)
                        {
                           loop5:
                           while(true)
                           {
                              if(!§!`§.objects.isWorldAtSleep())
                              {
                                 while(true)
                                 {
                                    §§push(this.§,!F§);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(0);
                                       if(_loc3_)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr41);
                                                }
                                                §§goto(addr86);
                                             }
                                             §§goto(addr52);
                                          }
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                                 addr19:
                              }
                              while(true)
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 if(!_loc3_)
                                 {
                                    §§goto(addr99);
                                 }
                                 this.§,!F§ = Math.min(this.§,!F§,3500);
                                 while(!(_loc4_ && param2))
                                 {
                                 }
                                 §§goto(addr135);
                                 addr41:
                                 if(_loc4_ && param2)
                                 {
                                    continue;
                                 }
                                 this.changeGameState(param1,param2);
                                 addr52:
                                 if(_loc3_)
                                 {
                                    §§goto(addr19);
                                 }
                                 §§goto(addr131);
                              }
                              continue loop0;
                              return;
                           }
                        }
                        addr99:
                        return;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr135);
      }
      
      public function §6!W§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§!!l§);
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
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr224:
                              while(true)
                              {
                                 §§push(this.§!!l§);
                                 addr196:
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    addr197:
                                    while(!_loc3_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       while(_loc2_)
                                       {
                                       }
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
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
                                       §§push(this.§!!l§);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§5!§);
                                          addr169:
                                          while(!(_loc3_ && this))
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop15:
                                             for(; !_loc3_; while(!(_loc3_ && param1))
                                             {
                                                §§pop();
                                                §§goto(addr153);
                                             })
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr192:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr140:
                                                                     while(_loc2_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           addr144:
                                                                           while(!§§pop())
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           addr76:
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr200);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr97);
                                                         }
                                                         break;
                                                      }
                                                      continue loop10;
                                                      addr126:
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop13;
                                                            addr54:
                                                            if(_loc3_ && param1)
                                                            {
                                                               continue;
                                                            }
                                                            addr62:
                                                            §§push(!§§pop());
                                                            if(_loc2_ || param1)
                                                            {
                                                               if(!(_loc2_ || this))
                                                               {
                                                                  continue loop15;
                                                               }
                                                               §§goto(addr76);
                                                            }
                                                            else
                                                            {
                                                               while(_loc2_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§goto(addr126);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr144);
                                                                  }
                                                                  §§goto(addr62);
                                                               }
                                                               §§goto(addr140);
                                                               addr116:
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr116);
                                                                  }
                                                                  addr164:
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr192);
                                                            }
                                                         }
                                                         continue loop12;
                                                         addr153:
                                                      }
                                                      §§goto(addr97);
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             continue loop11;
                                          }
                                          §§goto(addr197);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr179);
                           }
                        }
                     }
                  }
               }
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
               if(_loc2_ || this)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr54);
                  }
                  §§goto(addr62);
               }
               §§goto(addr169);
            }
         }
         §§goto(addr164);
      }
      
      public function §?#§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!!l§);
            if(_loc2_ || _loc1_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!_loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           addr68:
                           §§pop();
                           return this.§!!l§ == §5!§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.delta != 0)
            {
               if(_loc3_)
               {
                  this.doUserZoom(param1.delta > 0);
               }
            }
         }
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§8"'§);
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
                           addr259:
                           while(true)
                           {
                              §§push(!§!`§.mReadyToRun);
                           }
                        }
                        addr258:
                     }
                     while(true)
                     {
                        loop6:
                        while(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(this.§!!l§);
                              loop8:
                              while(true)
                              {
                                 §§push(§&!k§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       loop23:
                                       while(true)
                                       {
                                          §§push(this.§!!l§);
                                          loop24:
                                          while(!(_loc3_ && this))
                                          {
                                             §§push(§[!p§);
                                             loop25:
                                             while(_loc4_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop26:
                                                while(_loc4_ || this)
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr191:
                                                      addr225:
                                                      while(_loc4_ || _loc3_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop14:
                                                               while(!(_loc3_ && this))
                                                               {
                                                                  §§push(this.§!!l§);
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(LEVEL_STATE_SLINGSHOT);
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              addr145:
                                                                              §§push(§§pop() == §§pop());
                                                                              while(!_loc3_)
                                                                              {
                                                                              }
                                                                              continue loop13;
                                                                              addr145:
                                                                           }
                                                                           continue loop25;
                                                                        }
                                                                        continue loop25;
                                                                        addr137:
                                                                     }
                                                                     continue loop24;
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§!!l§);
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§#!J§);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    continue loop26;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr145);
                                                                              }
                                                                              while(§§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    if(_loc3_ && param2)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    if(!§!`§.isPlayingReplay())
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §!`§.camera.adjustManualScale(param1,param2 == 0 ? Number(§0k§.§<"2§) : Number(param2));
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §!`§.changeReplaySpeed(param1);
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(_loc4_ || param2)
                                                                                          {
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             break loop6;
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(!(_loc3_ && param1))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr259);
                                                                              }
                                                                              return;
                                                                              addr77:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(_loc4_ || param2)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop20;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           §§goto(addr259);
                                                                           addr157:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr137);
                                                                        }
                                                                        §§goto(addr145);
                                                                     }
                                                                  }
                                                                  continue loop24;
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc4_ || param2))
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr157);
                                                            }
                                                            §§goto(addr77);
                                                         }
                                                      }
                                                      while(_loc4_ || param2)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            break loop26;
                                                         }
                                                         continue loop11;
                                                         §§goto(addr191);
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                continue loop23;
                                             }
                                             continue loop9;
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function § !S§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§@!§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = false;
         if(!(_loc6_ && _loc3_))
         {
            if(!this.§8"'§)
            {
               if(_loc5_)
               {
                  return;
               }
            }
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         if(!_loc6_)
         {
            dispatchEvent(_loc3_);
            loop0:
            for(; !_loc3_.isDefaultPrevented(); if(_loc6_ && this)
            {
               continue;
            },§§goto(addr221),§§push(§^"2§(§!`§.levelObjects.activeObject).specialPowerUsed))
            {
               loop1:
               while(true)
               {
                  §=!L§.mouseDown();
                  loop2:
                  while(_loc5_)
                  {
                     while(true)
                     {
                        §§push(this.§6!W§(false));
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr276:
                              while(!_loc6_)
                              {
                                 continue loop0;
                              }
                           }
                           loop5:
                           while(true)
                           {
                              if(§!`§.isPlayingReplay())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §!`§.camera.startDragging(param1,param2);
                                    loop7:
                                    while(_loc5_ || _loc3_)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          if(!_loc6_)
                                          {
                                             §!`§.resetReplaySpeed();
                                             if(!(_loc5_ || param1))
                                             {
                                                continue;
                                             }
                                             if(!(_loc6_ && this))
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      return;
                                                   }
                                                   continue loop2;
                                                }
                                                loop22:
                                                while(true)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr98);
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr169:
                                                   while(true)
                                                   {
                                                      if(§!`§.slingshot.canStartDragging(this.§0!U§))
                                                      {
                                                         break loop7;
                                                      }
                                                      §!`§.camera.startDragging(param1,param2);
                                                      continue loop22;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break loop0;
                                                            }
                                                            this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                            while(true)
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     break loop15;
                                                                  }
                                                                  addr270:
                                                                  while(true)
                                                                  {
                                                                     §§push(§!`§.levelObjects.activeObject is §^"2§);
                                                                     addr237:
                                                                     while(!_loc6_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§^"2§(§!`§.levelObjects.activeObject).canActivateSpecialPower);
                                                                              addr246:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                           }
                                                                           addr240:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr169);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           §§goto(addr248);
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr230:
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr230:
                                                               }
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr212);
                                                                              }
                                                                              §§goto(addr169);
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr221:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §!`§.activateSpecialPower(this.§0!U§.x,this.§0!U§.y);
                                                            §§goto(addr230);
                                                         }
                                                      }
                                                      addr98:
                                                      return;
                                                      addr186:
                                                   }
                                                   addr212:
                                                   return;
                                                }
                                                §§goto(addr154);
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr240);
                                       }
                                       addr248:
                                       §§goto(addr276);
                                    }
                                    while(true)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §!`§.slingshot.startDragging();
                                          §§goto(addr186);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§0!U§ = §!`§.screenToBox2D(param1,param2,this.§0!U§);
                                          }
                                          addr262:
                                       }
                                       §§goto(addr270);
                                    }
                                 }
                              }
                              §§goto(addr262);
                           }
                           continue loop1;
                           return;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr283);
      }
      
      protected function §2j§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = §!`§.screenToBox2D(param1,param2,null);
         var _loc4_:§@_§;
         if(_loc4_ = §!`§.objects.getObjectFromPoint(_loc3_.x,_loc3_.y))
         {
            if(!(_loc5_ && param1))
            {
               §!`§.objects.removeObject(_loc4_,false);
            }
         }
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(this.§8"'§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §=!L§.mouseUp();
                     loop2:
                     while(true)
                     {
                        if(this.§!!l§ == §3"6§)
                        {
                           addr215:
                           while(true)
                           {
                              this.changeGameState(LEVEL_STATE_SLINGSHOT);
                              addr228:
                              while(true)
                              {
                              }
                           }
                           addr215:
                        }
                        loop3:
                        while(true)
                        {
                           if(§!`§.slingshot.mDragging)
                           {
                              loop4:
                              while(true)
                              {
                                 this.§0!U§ = §!`§.screenToBox2D(param1,param2,this.§0!U§);
                                 loop5:
                                 while(true)
                                 {
                                    §!`§.slingshot.setNewCoordinatesForRubber(this.§0!U§.x,this.§0!U§.y,false);
                                    loop6:
                                    while(true)
                                    {
                                       if(!§!`§.slingshot.canShootTheBird)
                                       {
                                          §!`§.slingshot.cancelDragging();
                                          loop7:
                                          while(true)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                continue loop6;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                if(!(_loc3_ || param1))
                                                {
                                                   while(_loc3_)
                                                   {
                                                      §!`§.slingshot.shoot();
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc3_ || param2))
                                                            {
                                                               continue loop1;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(this.§,!F§ < 6000)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        this.§,!F§ = 6000;
                                                                        continue loop8;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr215);
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   continue loop5;
                                                   addr167:
                                                }
                                                if(!(_loc3_ || param2))
                                                {
                                                   break loop7;
                                                }
                                                while(true)
                                                {
                                                   addr75:
                                                   while(§!`§.camera.mDragging)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(!isNaN(param1));
                                                         continue loop0;
                                                      }
                                                   }
                                                   §§goto(addr24);
                                                }
                                             }
                                             continue loop3;
                                             loop16:
                                             while(true)
                                             {
                                                if(!(_loc3_ || param1))
                                                {
                                                   continue loop7;
                                                }
                                                addr101:
                                                §§push(!isNaN(param2));
                                                if(_loc3_ || this)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §!`§.camera.dragToNewPoint(param1,param2);
                                                            loop19:
                                                            while(!_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §!`§.camera.stopDragging();
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           break loop17;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                            }
                                                            §§goto(addr80);
                                                         }
                                                      }
                                                      §§goto(addr28);
                                                   }
                                                   addr24:
                                                   return;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop16;
                                                   §§goto(addr101);
                                                }
                                                addr93:
                                             }
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr167);
                                    }
                                 }
                              }
                           }
                           §§goto(addr75);
                        }
                     }
                  }
               }
               §§goto(addr236);
            }
         }
         §§goto(addr215);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§8"'§)
            {
               loop0:
               while(true)
               {
                  if(!§!`§.slingshot.mDragging)
                  {
                     if(§!`§.camera.mDragging)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(!_loc4_)
                           {
                              §!`§.camera.dragToNewPoint(param1,param2);
                              while(true)
                              {
                                 §§goto(addr37);
                              }
                              addr75:
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr75);
                     }
                     addr37:
                     loop3:
                     while(true)
                     {
                        this.§5!c§ = param1;
                        while(!_loc4_)
                        {
                           this.§>!§ = param2;
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(_loc3_ || param1)
                           {
                              break loop3;
                           }
                           loop5:
                           while(true)
                           {
                              §!`§.slingshot.setNewCoordinatesForRubber(this.§0!U§.x,this.§0!U§.y,false);
                              addr87:
                              while(true)
                              {
                                 if(_loc4_ && _loc3_)
                                 {
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          this.§0!U§ = §!`§.screenToBox2D(param1,param2,this.§0!U§);
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    addr100:
                                 }
                                 continue loop3;
                                 return;
                                 continue loop5;
                              }
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr100);
               }
            }
         }
         §§goto(addr100);
      }
      
      public function §!!8§() : Point
      {
         return new Point(this.§5!c§,this.§>!§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§;q§.§!8§(this.§;q§.getValue() + param1);
         }
         loop0:
         while(true)
         {
            this.§@!J§(§"x§);
            do
            {
               if(!_loc3_)
               {
                  if(this.§!!l§ != §&!k§)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(do
            {
               this.§[!x§ = 2000;
               do
               {
                  this.§9!Q§ = §#"2§;
               }
               while(_loc3_);
               
            }
            while(_loc3_ && _loc3_);
            , _loc3_ && this);
            
            return;
         }
      }
      
      override public function getScore(param1:int) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               if(§§pop() > 1)
               {
                  if(_loc2_)
                  {
                     return Math.floor(this.§;q§.getValue() / param1) * param1;
                  }
                  addr60:
                  §§push(this.§;q§.getValue());
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.§3!x§)
            {
               if(_loc4_ || _loc2_)
               {
                  §§goto(addr39);
               }
            }
            var _loc1_:Number = §4a§.getLevelForId(§4a§.currentLevel).getEagleScore(§!`§.levelItemManager,§!`§.damageScoreMultiplier);
            var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
            return Math.round(_loc2_);
         }
         addr39:
         return 0;
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§8"'§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8"'§ = param1;
         }
      }
      
      public function §0!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.changeGameState(§5!§,true);
         }
      }
      
      public function §8!W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(§!`§.slingshot.updateScoreForRemainingBirds())
         {
         }
         if(_loc2_)
         {
            this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
         }
      }
   }
}
