package §3![§
{
   import §#!e§.LevelManager;
   import §6!B§.§>!E§;
   import §6o§.§="7§;
   import §9"!§.§2a§;
   import §9"!§.§9"3§;
   import §9"%§.§ H§;
   import §9"%§.§&!r§;
   import §9"%§.§,!8§;
   import §9"%§.§`!'§;
   import §<a§.§9U§;
   import §[!"§.§&0§;
   import §]!A§.;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §^"1§ extends §#y§
   {
      
      public static const §<!"§:int = 0;
      
      public static const §+!_§:int = 1;
      
      public static const §60§:int = 2;
      
      public static const §![§:int = 3;
      
      public static const §7!c§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const LEVEL_STATE_FAIL:int = 7;
      
      protected static const each:Number = 0.001;
      
      public static const §]!8§:Number = 2000;
      
      public static const §7!O§:Number = 2500;
      
      public static const §=!>§:int = 5;
      
      private static var §]Z§:Boolean;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §<!"§ = 0;
            loop0:
            while(true)
            {
               §+!_§ = 1;
               while(true)
               {
                  §60§ = 2;
                  addr155:
                  while(true)
                  {
                     §![§ = 3;
                  }
                  addr97:
                  if(_loc2_ || _loc1_)
                  {
                     §]!8§ = 2000;
                     loop9:
                     while(true)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           if(!_loc1_)
                           {
                              §7!O§ = 2500;
                              while(_loc2_ || _loc2_)
                              {
                                 §=!>§ = 5;
                                 if(_loc2_)
                                 {
                                    continue loop9;
                                 }
                              }
                              loop4:
                              for(; _loc2_; §§goto(addr49))
                              {
                                 LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                                 while(true)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       LEVEL_STATE_VICTORY2_END = 6;
                                       break loop9;
                                    }
                                    addr150:
                                    while(true)
                                    {
                                       §7!c§ = 4;
                                       continue loop4;
                                    }
                                    addr90:
                                    while(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr97);
                                       continue loop9;
                                    }
                                 }
                              }
                              addr49:
                              §§goto(addr155);
                           }
                           break;
                        }
                        §§goto(addr90);
                     }
                     while(true)
                     {
                        LEVEL_STATE_FAIL = 7;
                        §§goto(addr109);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      public var §@h§:int = 0;
      
      protected var §="=§:int = 0;
      
      public var §3"$§:Number;
      
      protected var §^&§:Number = 0;
      
      protected var §4d§:Boolean = false;
      
      private var §0J§:Number = 0;
      
      public var §!"1§:Number = 0;
      
      protected var § use§:Number = 0;
      
      protected var §4!+§:Number = 0;
      
      protected var §3!c§:Boolean = true;
      
      protected var §3!Z§:§9U§;
      
      public function §^"1§(param1:§9"3§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§3!Z§ = new §9U§();
         }
         do
         {
            super(param1);
         }
         while(!_loc2_);
         
      }
      
      public static function §1!g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §]Z§ = param1;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§3!Z§.assign(0);
               loop1:
               while(true)
               {
                  this.§@h§ = -1;
                  addr139:
                  while(true)
                  {
                     this.§="=§ = 0;
                     while(true)
                     {
                        this.§^&§ = 0;
                        addr120:
                        while(_loc1_ || this)
                        {
                           if(!_loc2_)
                           {
                              this.§4d§ = false;
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            param1 = §@O§.update(param1,true);
            while(true)
            {
               this.§+!5§(param1);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§@7§(param1);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      private function §+!5§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§="=§ != 0)
            {
               if(_loc3_)
               {
                  addr40:
                  §@O§.camera.adjustManualScale(this.§="=§ > 0,param1 * each);
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §@O§.clearLevel();
            while(true)
            {
               removeEventListeners();
               while(!(_loc1_ && _loc2_))
               {
                  this.§@h§ = -1;
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.addEventListeners();
         }
      }
      
      public function §4b§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§@O§.camera.mCurrentCameraSliderLocation >= §&0§.§#P§)
            {
               while(!§@O§.objects.isWorldAtSleep())
               {
                  if(!_loc2_)
                  {
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(false);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     if(_loc1_)
                     {
                        addr76:
                        break;
                     }
                     addr83:
                     return false;
                  }
                  return §§pop();
               }
               §§push(true);
               if(!(_loc2_ && this))
               {
                  return §§pop();
               }
               §§goto(addr71);
            }
            §§goto(addr83);
         }
         §§goto(addr76);
      }
      
      public function §""?§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&0§ = §@O§.camera;
         if(!_loc3_)
         {
            §§push(_loc2_.§#T§);
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
                  §§push(_loc2_.§#T§);
                  if(_loc3_ && this)
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(_loc3_ && param1)
                  {
                     break;
                  }
                  if(§§pop() <= §§pop())
                  {
                     loop4:
                     while(true)
                     {
                        if(!this.§4b§())
                        {
                           _loc2_.§#T§ = §&0§.§3z§ / 2;
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              while(§@O§.slingshot.birdsAvailable)
                              {
                                 if(!_loc4_)
                                 {
                                    break loop4;
                                 }
                                 if(!(_loc3_ && param1))
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc2_.§5]§();
                                       break loop4;
                                    }
                                    continue loop4;
                                 }
                                 _loc2_.§#T§ = -1;
                              }
                              addr28:
                           }
                           §§goto(addr24);
                        }
                        while(!_loc3_)
                        {
                           §§goto(addr112);
                        }
                        addr120:
                        while(true)
                        {
                           §§push(_loc2_);
                           §§push(_loc2_.§#T§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§#T§ = §§pop();
                           continue loop3;
                        }
                     }
                     continue;
                  }
                  §§goto(addr24);
               }
               §§goto(addr119);
            }
         }
         §§goto(addr120);
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§]!u§(false));
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || this)
               {
                  addr450:
                  if(§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(param2);
                           if(!(_loc3_ && this))
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              §§push(!§§pop());
                              while(true)
                              {
                              }
                           }
                           while(!§§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(param1);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§<!"§);
                                    loop4:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(param1);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§+!_§);
                                          loop6:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(param1);
                                             loop7:
                                             while(!_loc3_)
                                             {
                                                §§push(§60§);
                                                while(§§pop() != §§pop())
                                                {
                                                   §§push(param1);
                                                   continue loop5;
                                                }
                                                addr382:
                                                §1!g§(false);
                                                this.§!"1§ = 5000;
                                                addr385:
                                                if(!_loc3_)
                                                {
                                                   §@O§.particles.moveTrailsNewToOld();
                                                   loop20:
                                                   while(true)
                                                   {
                                                      this.§@h§ = param1;
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      loop21:
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr222:
                                                                     while(!(_loc3_ && param1))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           this.§!"1§ = 1200;
                                                                           addr236:
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              if(!§@O§.objects.mMightyEagleAdded)
                                                                              {
                                                                                 addr175:
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §@O§.camera.goToBirdView();
                                                                                       §@O§.slingshot.makeBirdsJumpForJoy();
                                                                                       addr167:
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr130:
                                                                                          §§push(§>!E§);
                                                                                          §§push("LevelCompletedBirdsMilitary");
                                                                                          if(_loc4_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                                          }
                                                                                          §§pop().§7N§(§§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!(_loc4_ || param2))
                                                                                             {
                                                                                                §§goto(addr175);
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr358:
                                                                                                §@O§.camera.goToCastleView();
                                                                                                addr361:
                                                                                             }
                                                                                             continue loop20;
                                                                                          }
                                                                                          §§goto(addr167);
                                                                                       }
                                                                                       addr276:
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(!(_loc4_ || param2))
                                                                                          {
                                                                                             addr188:
                                                                                             break loop1;
                                                                                          }
                                                                                          if(!§@O§.objects.mMightyEagleAdded)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       addr295:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       addr295:
                                                                                       addr187:
                                                                                    }
                                                                                    addr273:
                                                                                    this.§!"1§ = 1200;
                                                                                    §§goto(addr276);
                                                                                 }
                                                                                 §§goto(addr236);
                                                                              }
                                                                              §§goto(addr130);
                                                                           }
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              this.§0J§ = §=!>§;
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr361);
                                                                           }
                                                                        }
                                                                        §@O§.camera.goToCastleView();
                                                                        §§goto(addr295);
                                                                     }
                                                                     if(!(_loc4_ || param2))
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                     §@O§.camera.goToBirdView();
                                                                     addr259:
                                                                     §§goto(addr188);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop23:
                                                                     for(; _loc4_ || this; §>!E§.§&!^§())
                                                                     {
                                                                        §>!E§.§7N§("LevelFailedPigs1");
                                                                        while(true)
                                                                        {
                                                                           this.§!"1§ = 1200;
                                                                           addr82:
                                                                           while(_loc4_)
                                                                           {
                                                                              §@O§.camera.goToCastleView();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §@O§.objects.makePigsSmile(5);
                                                                                          continue loop21;
                                                                                       }
                                                                                       §§goto(addr385);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break loop6;
                                                                                             }
                                                                                             continue loop23;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr311:
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop20;
                                                                                             addr402:
                                                                                          }
                                                                                          if(_loc3_ && param1)
                                                                                          {
                                                                                             continue loop20;
                                                                                             addr410:
                                                                                          }
                                                                                          this.§!"1§ = 2000;
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr130);
                                                                                    addr112:
                                                                                 }
                                                                                 §§goto(addr385);
                                                                              }
                                                                              §§goto(addr188);
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr187);
                                                               }
                                                               §§goto(addr89);
                                                            }
                                                            §§goto(addr82);
                                                         }
                                                         §§goto(addr71);
                                                      }
                                                   }
                                                   addr366:
                                                   return;
                                                   addr29:
                                                }
                                                §§goto(addr382);
                                                addr194:
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                while(true)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      addr209:
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            addr92:
                                                            §§push(param1);
                                                            if(_loc4_ || this)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue;
                                                               }
                                                               loop11:
                                                               while(!_loc3_)
                                                               {
                                                                  §§push(§7!c§);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           §§push(param1);
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(LEVEL_STATE_VICTORY2_END);
                                                                              addr265:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr192:
                                                                                    §§push(param1);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§goto(addr194);
                                                                                       §§goto(addr92);
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr343:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(_loc4_ || param2)
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(param1);
                                                                                          continue loop11;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§goto(addr358);
                                                                              }
                                                                              §§goto(addr273);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr381);
                                                                     §§goto(addr382);
                                                                     §§goto(addr209);
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               continue loop5;
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                   §§goto(addr265);
                                                }
                                                §§goto(addr222);
                                             }
                                             continue loop3;
                                          }
                                          while(true)
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                §@O§.camera.goToBirdView();
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr402);
                                       }
                                    }
                                    this.§!"1§ = 2000;
                                    §§goto(addr410);
                                 }
                              }
                           }
                           break;
                        }
                        return;
                     }
                     addr452:
                  }
                  §§goto(addr433);
               }
               §§goto(addr452);
            }
            §§goto(addr450);
         }
         §§goto(addr295);
      }
      
      public function §-6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§!"1§ = 2000;
            while(true)
            {
               this.§4d§ = false;
               while(_loc2_ || _loc1_)
               {
                  this.§^&§ = 2000;
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        this.changeGameState(§^"1§.§+!_§,true);
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §'"8§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^&§ = Math.max(this.§^&§,param1);
         }
      }
      
      protected function §+!=§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§@O§.slingshot.mSlingShotState == §2a§.§=U§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§pop();
                     addr52:
                     return !§@O§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §@7§(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:§&!r§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:* = false;
         if(_loc8_)
         {
            §§push(this);
            §§push(this.§3"$§);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop() - param1);
            }
            §§pop().§3"$§ = §§pop();
            while(true)
            {
               §§push(this.§4d§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§^&§);
                        if(_loc8_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§^&§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§^&§);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              addr1094:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(!(_loc9_ && this))
                                    {
                                       this.§3"$§ = 0;
                                    }
                                    while(true)
                                    {
                                    }
                                    addr1105:
                                 }
                              }
                              addr1001:
                              if(!(_loc8_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(0);
                              if(!(_loc9_ && _loc2_))
                              {
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() > §§pop());
                                    loop32:
                                    while(!(_loc9_ && this))
                                    {
                                       loop33:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(!§@O§.objects.isPigsAlive());
                                             loop34:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop35:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop36:
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            §§pop();
                                                            loop37:
                                                            while(true)
                                                            {
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  §§push(!§@O§.objects.mSardineCanAdded);
                                                                  while(true)
                                                                  {
                                                                     addr881:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop64:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    §§pop();
                                                                                    loop65:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§@O§.objects.mMightyEagleAdded);
                                                                                       addr865:
                                                                                       while(true)
                                                                                       {
                                                                                          loop74:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§push(this.§+!=§());
                                                                                                loop75:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop76:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§@O§.objects.mMightyEagleAdded)
                                                                                                         {
                                                                                                            if(!§@O§.objects.mSardineCanAdded)
                                                                                                            {
                                                                                                               loop77:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.setGameOverState(LEVEL_STATE_FAIL);
                                                                                                                  loop78:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr753:
                                                                                                                     loop48:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§]!u§(false));
                                                                                                                        loop49:
                                                                                                                        while(_loc8_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop50:
                                                                                                                              while(_loc8_ || this)
                                                                                                                              {
                                                                                                                                 §@O§.gameOver();
                                                                                                                                 loop51:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr743:
                                                                                                                                    loop86:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(this.§!"1§);
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - param1);
                                                                                                                                       }
                                                                                                                                       §§pop().§!"1§ = §§pop();
                                                                                                                                       loop87:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§!"1§);
                                                                                                                                          loop88:
                                                                                                                                          while(!(_loc9_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                loop89:
                                                                                                                                                for(; !(_loc9_ && this); if(!(_loc8_ || this))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                },if(_loc8_ || this)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() <= §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr293);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr99);
                                                                                                                                                },while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr979);
                                                                                                                                                })
                                                                                                                                                {
                                                                                                                                                   if(§§pop() >= §§pop())
                                                                                                                                                   {
                                                                                                                                                      loop91:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§@h§);
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§![§);
                                                                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§@h§);
                                                                                                                                                                  loop92:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§7!c§);
                                                                                                                                                                     addr564:
                                                                                                                                                                     addr1464:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() != §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§@h§);
                                                                                                                                                                           if(_loc8_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§<!"§);
                                                                                                                                                                              if(_loc8_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc8_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop51;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this.§!"1§);
                                                                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc8_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop89;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr579);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr515);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1425);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr579);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr511);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1425);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1459);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§@h§);
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop92;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1425);
                                                                                                                                                                              }
                                                                                                                                                                              addr1146:
                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§@h§);
                                                                                                                                                                                 break loop91;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1149:
                                                                                                                                                                                 §§push(!(_loc4_ = §@O§.activeObject));
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1407:
                                                                                                                                                                                                if(_loc4_.§[" § < _loc4_.§@!h§)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1408:
                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1413:
                                                                                                                                                                                                      _loc5_ = _loc4_ is §`!'§;
                                                                                                                                                                                                      addr1400:
                                                                                                                                                                                                      _loc6_ = _loc4_ is §,!8§;
                                                                                                                                                                                                      §§push((_loc4_ as § H§).§-!a§);
                                                                                                                                                                                                      if(_loc8_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc8_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1407);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1394:
                                                                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                                                                      addr1410:
                                                                                                                                                                                                      addr1401:
                                                                                                                                                                                                      addr1395:
                                                                                                                                                                                                      addr1414:
                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                      if(_loc8_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1357:
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         if(!Boolean(§§pop()))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1358:
                                                                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               addr1366:
                                                                                                                                                                                                               if(_loc8_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1321:
                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1322:
                                                                                                                                                                                                                     if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1330:
                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1333:
                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                           if(_loc8_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1341:
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1343:
                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1344:
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    addr1345:
                                                                                                                                                                                                                                    §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() >= 0);
                                                                                                                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(_loc8_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1304:
                                                                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         addr1309:
                                                                                                                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1304);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc8_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1257:
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1259:
                                                                                                                                                                                                                                                                           if(_loc8_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §1!g§(true);
                                                                                                                                                                                                                                                                                 addr1271:
                                                                                                                                                                                                                                                                                 if(_loc8_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.changeGameState(§7!c§);
                                                                                                                                                                                                                                                                                    addr1214:
                                                                                                                                                                                                                                                                                    if(_loc8_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1194:
                                                                                                                                                                                                                                                                                       §@O§.activeObject = null;
                                                                                                                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.changeGameState(§7!c§);
                                                                                                                                                                                                                                                                                                if(_loc8_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1194);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr1415:
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1309);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1259);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1194);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1410);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1271);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1214);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1408);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1401);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1395);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1345);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1194);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1358);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1321);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1330);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1333);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1322);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1321);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1344);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1257);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1341);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1413);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1304);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1407);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1257);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1357);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1400);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1366);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1194);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1414);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1394);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1321);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1358);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1194);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1415);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1413);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1333);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1407);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1343);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1413);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1449);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1143:
                                                                                                                                                                           §§push(§60§);
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1146);
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1425);
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr579:
                                                                                                                                                                                 if(this.§!"1§ > 0)
                                                                                                                                                                                 {
                                                                                                                                                                                    §@O§.updatePigAnimations(param1);
                                                                                                                                                                                    if(_loc9_ && _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1425:
                                                                                                                                                                                       if(this.§!"1§ <= 0)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1438);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1449);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr359:
                                                                                                                                                                                    §§push(!§@O§.camera.isOnCastleView());
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop36;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr376:
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          if(_loc8_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr388:
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc8_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr312:
                                                                                                                                                                                                               §§push(§@O§.camera.mCurrentAction == §&0§.§'j§);
                                                                                                                                                                                                               if(_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc9_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc8_ || _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop75;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr338:
                                                                                                                                                                                                                           §§push(!§§pop());
                                                                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr584:
                                                                                                                                                                                                                              _loc3_ = §§pop();
                                                                                                                                                                                                                              if(_loc8_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr548:
                                                                                                                                                                                                                                 §§push(Boolean(_loc3_));
                                                                                                                                                                                                                                 if(Boolean(_loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr550:
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop64;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop1;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr511:
                                                                                                                                                                                                                                       §§push(this.§0J§);
                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop88;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr515:
                                                                                                                                                                                                                                       §§push(§§pop() > 0);
                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop74;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc8_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr526:
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr528:
                                                                                                                                                                                                                                                if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      this.§!"1§ = 2000;
                                                                                                                                                                                                                                                      addr540:
                                                                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§3"$§ = 0;
                                                                                                                                                                                                                                                            addr500:
                                                                                                                                                                                                                                                            if(_loc8_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                                                                               §§push(this.§0J§);
                                                                                                                                                                                                                                                               if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().§0J§ = §§pop();
                                                                                                                                                                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc8_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr406:
                                                                                                                                                                                                                                                                              §§goto(addr359);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(!_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§^&§);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1001);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1084:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break loop89;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop4;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc2_);
                                                                                                                                                                                                                                                                              addr1058:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                                                                                                                 break loop32;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1069:
                                                                                                                                                                                                                                                                           addr1053:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr819:
                                                                                                                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.setGameOverState(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                           addr775:
                                                                                                                                                                                                                                                                           continue loop48;
                                                                                                                                                                                                                                                                           addr824:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1036:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§^&§);
                                                                                                                                                                                                                                                                                 break loop88;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1036:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr580:
                                                                                                                                                                                                                                                                     §§goto(addr584);
                                                                                                                                                                                                                                                                     §§push(Boolean(§@O§.objects.hasBirds()));
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr500);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1459:
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop76;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         loop45:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§4d§ = true;
                                                                                                                                                                                                                                                            addr916:
                                                                                                                                                                                                                                                            while(_loc8_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr892:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop48;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr892:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Boolean(§@O§.objects.isWorldAtSleep()));
                                                                                                                                                                                                                                                                     addr1068:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc2_ = §§pop();
                                                                                                                                                                                                                                                                        §§goto(addr1069);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1080:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr933:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.§^&§ = 15000;
                                                                                                                                                                                                                                                               continue loop45;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop3;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr955:
                                                                                                                                                                                                                                                         addr1076:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§+!=§());
                                                                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr929:
                                                                                                                                                                                                                                                            while(!_loc9_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr933);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr892);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1068);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop86;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.§3"$§ = §]!8§;
                                                                                                                                                                                                                                                               §§goto(addr1080);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr835:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1105);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §@O§.updatePigAnimations(param1);
                                                                                                                                                                                                                                                      addr628:
                                                                                                                                                                                                                                                      §§push(!§@O§.camera.isOnCastleView());
                                                                                                                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc8_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr638:
                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                            if(_loc9_ && this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop35;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr645:
                                                                                                                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr653:
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  if(_loc9_ && param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1449:
                                                                                                                                                                                                                                                                     this.§!"1§ = 1000;
                                                                                                                                                                                                                                                                     if(_loc8_ || _loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1459);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§@O§.camera.mCurrentAction != §&0§.§'j§);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr602:
                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr558:
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr603:
                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop87;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop37;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr824);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(_loc8_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr954:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                        §§goto(addr955);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr954:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr931);
                                                                                                                                                                                                                                                                  §§goto(addr645);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop33;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr1053);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr951:
                                                                                                                                                                                                                                                               addr1051:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1449);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1058);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr954);
                                                                                                                                                                                                                                                      addr693:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§4d§);
                                                                                                                                                                                                                                                         addr1030:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1028:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      addr1032:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(_loc8_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               §§goto(addr1036);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                                                                               addr1075:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1076);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1074:
                                                                                                                                                                                                                                                            addr1033:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr979:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr980:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               addr981:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(!(_loc9_ && this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr989:
                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(!§@O§.objects.isPigsAlive());
                                                                                                                                                                                                                                                                           addr966:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr967:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break loop48;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr942:
                                                                                                                                                                                                                                                                                 §§push(this.§4d§);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                                                                                                                    if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr951);
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr954);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr989);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                        addr1087:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                 addr1089:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1074);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1088:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1075);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1086:
                                                                                                                                                                                                                                                                     addr982:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr966);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(!_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.§4d§ = true;
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr892);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1077);
                                                                                                                                                                                                                                                addr971:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§#6§.§6!z§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                             if(!_loc8_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop34;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr430:
                                                                                                                                                                                                                                                if(_loc8_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.changeGameState(§+!_§);
                                                                                                                                                                                                                                                   addr440:
                                                                                                                                                                                                                                                   if(_loc9_ && param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop78;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc8_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr406);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr916);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr857:
                                                                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr810:
                                                                                                                                                                                                                                                      §§push(§@O§.objects.mMightyEagleTimer > 5500);
                                                                                                                                                                                                                                                      if(!(_loc8_ || param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(!_loc9_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            §§goto(addr857);
                                                                                                                                                                                                                                                            §§goto(addr810);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop32;
                                                                                                                                                                                                                                                         addr854:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr817:
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr819);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else if(§@O§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop50;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr775);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break loop48;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.setGameOverState(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr874:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§4d§);
                                                                                                                                                                                                                                                            addr1042:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1062:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr775);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr406);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr954);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr550);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1449);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr526);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr342:
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr344:
                                                                                                                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.changeGameState(§+!_§);
                                                                                                                                                                                                                                       addr356:
                                                                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop77;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr874);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr603);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop49;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr980);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr548);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr515);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr388);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1438:
                                                                                                                                                                                                            if(!§@O§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1449);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1459);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1030);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr526);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr342);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      §§goto(addr1062);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1060:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1032);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr638);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1088);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr388);
                                                                                                                                                                                    §§goto(addr1425);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr580);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1089);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              addr622:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr558);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1425);
                                                                                                                                                                     }
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr528);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1146);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                         addr742:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1143);
                                                                                                                                                      §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr725);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1086);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr994);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr978);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              if(!(_loc8_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop65;
                                                                                                                              }
                                                                                                                              this.§3"$§ = §]!8§;
                                                                                                                              §§goto(addr430);
                                                                                                                           }
                                                                                                                           §§goto(addr743);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              §§goto(addr851);
                                                                                                                              §§push(§§pop());
                                                                                                                           }
                                                                                                                           §§goto(addr1061);
                                                                                                                           addr844:
                                                                                                                        }
                                                                                                                        §§goto(addr775);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§^&§ = 6000;
                                                                                                                        §§goto(addr971);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr753);
                                                                                                         }
                                                                                                         §§goto(addr835);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr753);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr867);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1033);
                                                                              }
                                                                           }
                                                                           §§goto(addr865);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr880:
                                                               }
                                                               §§goto(addr990);
                                                            }
                                                         }
                                                         §§goto(addr982);
                                                      }
                                                   }
                                                   §§goto(addr880);
                                                }
                                             }
                                          }
                                          §§goto(addr1028);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr1060);
                                    }
                                 }
                                 §§goto(addr1094);
                              }
                              §§goto(addr1425);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr1084);
                  }
               }
               if(!(_loc8_ || this))
               {
                  continue;
               }
               §§push(§@O§.camera.mCurrentAction == §&0§.§'j§);
               if(_loc8_)
               {
                  if(!_loc9_)
                  {
                     if(_loc8_)
                     {
                        if(_loc8_ || _loc2_)
                        {
                           if(_loc8_)
                           {
                              if(!_loc9_)
                              {
                                 addr57:
                                 §§push(!§§pop());
                                 if(!(_loc9_ && param1))
                                 {
                                    if(_loc8_)
                                    {
                                       if(!(_loc9_ && param1))
                                       {
                                          if(_loc8_ || this)
                                          {
                                             §§goto(addr80);
                                          }
                                          §§goto(addr967);
                                       }
                                       §§goto(addr881);
                                    }
                                    §§goto(addr600);
                                 }
                                 §§goto(addr312);
                              }
                              §§goto(addr1052);
                           }
                           §§goto(addr942);
                        }
                        §§goto(addr628);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr170);
               }
               §§goto(addr57);
            }
         }
         §§goto(addr732);
      }
      
      protected function setGameOverState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!this.§4d§)
            {
               while(true)
               {
                  this.§4d§ = true;
                  addr138:
                  while(true)
                  {
                  }
                  addr112:
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  loop6:
                  while(true)
                  {
                     if(§@O§.objects.isWorldAtSleep())
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              this.§^&§ = Math.min(this.§^&§,3500);
                           }
                           addr82:
                        }
                        loop7:
                        while(_loc3_)
                        {
                           loop8:
                           while(true)
                           {
                              §§push(this.§^&§);
                              if(_loc3_ || this)
                              {
                                 §§push(0);
                                 if(!_loc4_)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       break;
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          this.changeGameState(param1,param2);
                                       }
                                       else
                                       {
                                          if(_loc4_)
                                          {
                                             break loop6;
                                          }
                                          §§goto(addr112);
                                       }
                                    }
                                    if(_loc3_)
                                    {
                                       if(_loc3_ || param2)
                                       {
                                          break;
                                       }
                                       addr97:
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             if(!§@O§.slingshot.mDragging)
                                             {
                                                continue loop6;
                                             }
                                             §§goto(addr97);
                                          }
                                          addr92:
                                       }
                                       return;
                                    }
                                    continue loop7;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       break loop7;
                                    }
                                    §§goto(addr92);
                                 }
                                 addr129:
                              }
                              addr128:
                              while(true)
                              {
                                 §§goto(addr129);
                                 continue loop8;
                              }
                           }
                           return;
                        }
                        return;
                     }
                     §§goto(addr28);
                  }
                  §§goto(addr138);
               }
            }
            while(true)
            {
               §§goto(addr128);
               §§goto(addr138);
            }
         }
         §§goto(addr82);
      }
      
      public function §]!u§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§@h§);
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
                              addr229:
                              while(true)
                              {
                                 §§push(this.§@h§);
                                 addr215:
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    addr216:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr228:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§@h§);
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(LEVEL_STATE_FAIL);
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   addr181:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop14:
                                                         while(_loc2_ || _loc2_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr78:
                                                               return §§pop();
                                                            }
                                                            while(!_loc3_)
                                                            {
                                                               §§pop();
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ && param1)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§push(param1);
                                                                  if(_loc2_ || this)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        break;
                                                                        addr156:
                                                                     }
                                                                     §§push(!§§pop());
                                                                     if(_loc2_)
                                                                     {
                                                                        addr145:
                                                                        §§push(§§pop());
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr78);
                                                                           }
                                                                        }
                                                                        addr146:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop16;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr145);
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop7;
                                                         addr54:
                                                         if(_loc3_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr62);
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   addr29:
                                                   §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                   if(_loc3_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc2_ || param1)
                                                      {
                                                         §§goto(addr54);
                                                      }
                                                      §§goto(addr62);
                                                   }
                                                   §§goto(addr216);
                                                }
                                             }
                                             §§push(this.§@h§);
                                             break;
                                             if(_loc3_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr29);
                                          }
                                          §§goto(addr215);
                                       }
                                    }
                                 }
                                 §§goto(addr181);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr229);
      }
      
      public function §=! §() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§@h§);
            if(!_loc1_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!(_loc1_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           addr68:
                           §§pop();
                           return this.§@h§ == LEVEL_STATE_FAIL;
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1.delta != 0)
            {
               if(!_loc3_)
               {
                  addr39:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§3!c§);
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
                           addr214:
                           while(true)
                           {
                              §§push(!§@O§.mReadyToRun);
                           }
                        }
                        addr213:
                     }
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(Boolean(§@O§.slingshot.mDragging));
                                 loop8:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop6;
                                    }
                                    if(_loc3_)
                                    {
                                       §§push(§§pop());
                                       loop9:
                                       while(!_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             loop13:
                                             while(!§§pop())
                                             {
                                                §§push(this.§@h§);
                                                while(true)
                                                {
                                                   §§push(§7!c§);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§@h§);
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(§![§);
                                                                        addr120:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 break;
                                                                                 addr125:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc3_ || param2)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr137:
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc3_ || this))
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                   addr206:
                                                                                                   continue loop20;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   break loop22;
                                                                                                }
                                                                                                addr198:
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§@O§.camera.mDragging));
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr199:
                                                                                          addr137:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   if(!§@O§.isPlayingReplay())
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break loop8;
                                                                                                            }
                                                                                                            §@O§.camera.adjustManualScale(param1,param2 == 0 ? Number(§&0§.§`l§) : Number(param2));
                                                                                                            addr115:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr144);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr115);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §@O§.changeReplaySpeed(param1);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            break loop13;
                                                                                                         }
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr199);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr115);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr115);
                                                                                             }
                                                                                          }
                                                                                          addr77:
                                                                                       }
                                                                                       §§goto(addr24);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           §§goto(addr137);
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr125);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr24:
                                             return;
                                             addr164:
                                          }
                                          §§goto(addr198);
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr214);
                              }
                           }
                           §§goto(addr206);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §#s§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§="=§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(!_loc6_)
         {
            if(!this.§3!c§)
            {
               if(!(_loc6_ && param1))
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
            while(true)
            {
               if(_loc3_.isDefaultPrevented())
               {
                  if(_loc5_ || _loc3_)
                  {
                     break;
                  }
               }
               §="7§.§<5§();
               loop1:
               while(true)
               {
                  §§push(this.§]!u§(false));
                  loop2:
                  while(!§§pop())
                  {
                     loop3:
                     while(!§@O§.isPlayingReplay())
                     {
                        §§push(Boolean(§@O§.activeObject));
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(this.§@h§ == §60§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop8:
                                          while(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            §§push(§]Z§);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  break loop10;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc6_ && param2)
                                                            {
                                                               break;
                                                            }
                                                            loop15:
                                                            while(!(_loc6_ && this))
                                                            {
                                                               continue loop0;
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  addr74:
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     return;
                                                                     addr107:
                                                                  }
                                                                  while(_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §1!g§(false);
                                                                        continue loop15;
                                                                     }
                                                                     §§goto(addr74);
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop7;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr107);
                                                   }
                                                   else
                                                   {
                                                      _loc4_ = §@O§.screenToBox2D(param1,param2);
                                                      if(_loc5_)
                                                      {
                                                         if(!§@O§.slingshot.canStartDragging(_loc4_))
                                                         {
                                                            §@O§.camera.startDragging(param1,param2);
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               addr274:
                                                               §@O§.slingshot.startDragging();
                                                               this.changeGameState(§+!_§);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      else if(true)
                                                      {
                                                         break loop3;
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                }
                                             }
                                             continue loop5;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr287);
                              }
                              §§goto(addr146);
                           }
                        }
                     }
                     §@O§.camera.startDragging(param1,param2);
                     if(!_loc6_)
                     {
                        addr285:
                        §@O§.resetReplaySpeed();
                     }
                     addr287:
                     return;
                  }
                  return;
               }
            }
            return;
         }
         §§goto(addr109);
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!_loc5_)
         {
            §§push(this.§3!c§);
            if(!(_loc5_ && param2))
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     return;
                  }
                  addr205:
                  while(true)
                  {
                  }
                  addr205:
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     §="7§.§[b§();
                     if(!_loc5_)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(this.§@h§ == §<!"§)
                        {
                           if(!_loc5_)
                           {
                              this.changeGameState(§+!_§);
                              if(_loc4_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                              }
                              break;
                           }
                           break;
                        }
                        if(§@O§.slingshot.mDragging)
                        {
                           if(!(_loc5_ && param1))
                           {
                              _loc3_ = §@O§.screenToBox2D(param1,param2);
                              if(_loc4_)
                              {
                                 §@O§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                 loop1:
                                 do
                                 {
                                    if(!§@O§.slingshot.canShootTheBird())
                                    {
                                       §@O§.slingshot.cancelDragging();
                                       if(_loc4_ || param1)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(false)
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   this.changeGameState(§60§);
                                                   addr114:
                                                   while(_loc5_ && param2)
                                                   {
                                                      while(true)
                                                      {
                                                         §@O§.slingshot.shoot();
                                                         continue loop2;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                addr110:
                                             }
                                             else
                                             {
                                                addr142:
                                                if(§@O§.camera.mDragging)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr148:
                                                      §§push(!isNaN(param1));
                                                      if(_loc4_)
                                                      {
                                                         addr154:
                                                         if(§§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               addr158:
                                                               §§pop();
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  break loop0;
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                         }
                                                         addr199:
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §@O§.camera.dragToNewPoint(param1,param2);
                                                               §§goto(addr205);
                                                               addr187:
                                                               if(!(_loc4_ || param2))
                                                               {
                                                                  continue;
                                                               }
                                                               addr178:
                                                               return;
                                                               addr194:
                                                            }
                                                            addr200:
                                                         }
                                                         while(true)
                                                         {
                                                            §@O§.camera.stopDragging();
                                                            if(_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§goto(addr194);
                                                         addr181:
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr178);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr110);
                                          }
                                       }
                                       §§goto(addr114);
                                    }
                                 }
                                 while(!_loc4_);
                                 
                                 §§goto(addr142);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr142);
                     }
                     break;
                  }
                  §§goto(addr199);
                  §§push(!isNaN(param2));
               }
               §§goto(addr181);
            }
            §§goto(addr154);
         }
         §§goto(addr178);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(_loc5_)
         {
            if(!this.§3!c§)
            {
               if(_loc5_ || param2)
               {
                  return;
               }
               addr106:
               §@O§.camera.dragToNewPoint(param1,param2);
            }
            else if(§@O§.slingshot.mDragging)
            {
               if(!(_loc4_ && _loc3_))
               {
                  _loc3_ = §@O§.screenToBox2D(param1,param2);
                  if(!(_loc4_ && param1))
                  {
                     §@O§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!_loc4_)
                     {
                        addr111:
                        this.§ use§ = param1;
                        if(!_loc4_)
                        {
                           addr116:
                           this.§4!+§ = param2;
                        }
                     }
                     return;
                  }
                  §§goto(addr116);
               }
            }
            else if(§@O§.camera.mDragging)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr106);
               }
            }
         }
         §§goto(addr111);
      }
      
      public function §"!J§() : Point
      {
         return new Point(this.§ use§,this.§4!+§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§3!Z§.assign(this.§3!Z§.getValue() + param1);
            loop0:
            while(true)
            {
               this.§'"8§(§7!O§);
               loop1:
               for(; this.§@h§ == §7!c§; if(_loc2_ || _loc3_)
               {
                  continue loop0;
               })
               {
                  loop2:
                  while(true)
                  {
                     this.§!"1§ = 2000;
                     addr84:
                     while(true)
                     {
                        this.§0J§ = §=!>§;
                        if(_loc2_)
                        {
                           if(!(_loc3_ && this))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               addr24:
               return;
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr24);
            }
         }
         §§goto(addr84);
      }
      
      override public function getScore() : int
      {
         return this.§3!Z§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(!§#6§.§6!z§.objects.mMightyEagleAdded)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr60:
                  §§push(LevelManager.§1A§(LevelManager.§'!O§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr60);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§3!c§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3!c§ = param1;
         }
      }
   }
}
