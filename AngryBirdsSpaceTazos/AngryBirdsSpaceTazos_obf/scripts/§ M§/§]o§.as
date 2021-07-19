package § M§
{
   import § !Y§.§]!,§;
   import §'4§.§3!n§;
   import §'4§.§^g§;
   import §0N§.§5!^§;
   import §3"#§.§<!O§;
   import §9!w§.§9!,§;
   import §]">§.§ 6§;
   import §]">§.§5"$§;
   import §]">§.§<Y§;
   import §`!j§.§9"!§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §]o§ extends §;!!§
   {
      
      public static const §?;§:int = 0;
      
      public static const LEVEL_STATE_SLINGSHOT:int = 1;
      
      public static const §&7§:int = 2;
      
      public static const §?!Z§:int = 3;
      
      public static const §5!N§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §0!+§:int = 7;
      
      public static const §22§:Number = 2000;
      
      public static const §1!"§:Number = 2500;
      
      public static const §#3§:int = 5;
      
      private static const §%!6§:Number = 0.001;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?;§ = 0;
            loop0:
            while(true)
            {
               LEVEL_STATE_SLINGSHOT = 1;
               loop1:
               while(true)
               {
                  §&7§ = 2;
                  loop2:
                  while(true)
                  {
                     §?!Z§ = 3;
                     while(true)
                     {
                        §5!N§ = 4;
                        continue loop0;
                        addr54:
                        if(!(_loc1_ && §]o§))
                        {
                           while(true)
                           {
                              §§push(§§findproperty(§%!6§));
                              §§push(§9!,§.§&N§);
                              if(!(_loc1_ && §]o§))
                              {
                                 §§push(§§pop() / 100);
                              }
                              §§pop().§%!6§ = §§pop();
                              if(_loc2_)
                              {
                                 break;
                              }
                              loop10:
                              while(!_loc1_)
                              {
                                 addr47:
                                 if(!(_loc2_ || §]o§))
                                 {
                                    loop8:
                                    while(!(_loc1_ && _loc1_))
                                    {
                                       addr88:
                                       if(!(_loc1_ && §]o§))
                                       {
                                          §1!"§ = 2500;
                                          break loop10;
                                       }
                                       addr116:
                                       while(!_loc1_)
                                       {
                                          if(!_loc1_)
                                          {
                                             §0!+§ = 7;
                                             break loop8;
                                          }
                                          continue loop1;
                                          §§goto(addr88);
                                       }
                                       while(!(_loc1_ && _loc2_))
                                       {
                                          LEVEL_STATE_VICTORY2_END = 6;
                                          §§goto(addr107);
                                       }
                                       addr107:
                                       continue loop0;
                                       §§goto(addr47);
                                    }
                                    while(!_loc1_)
                                    {
                                       §22§ = 2000;
                                       §§goto(addr71);
                                    }
                                    addr71:
                                    continue loop2;
                                 }
                                 §§goto(addr54);
                              }
                              while(true)
                              {
                                 §#3§ = 5;
                                 §§goto(addr45);
                              }
                              addr45:
                           }
                           return;
                           addr61:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      protected var §0S§:int = 0;
      
      protected var §2!J§:Number;
      
      protected var § set§:Number = 0;
      
      protected var §%w§:Boolean = false;
      
      protected var §,!!§:Number = 0;
      
      private var §,h§:Number = 0;
      
      private var §3!H§:int = 0;
      
      private var §]!l§:Number = 0;
      
      private var §`U§:Number = 0;
      
      protected var §9! §:Boolean = true;
      
      protected var §]!O§:§]!,§;
      
      protected var §#"5§:Point;
      
      public function §]o§(param1:§^g§, param2:§9"!§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§]!O§ = new §]!,§();
            while(true)
            {
               this.§#"5§ = new Point();
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  while(true)
                  {
                     super(param1,param2);
                     if(_loc4_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function get §]e§() : int
      {
         return this.§0S§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            loop0:
            while(true)
            {
               this.§]!O§.§-"F§(0);
               while(true)
               {
                  this.§0S§ = -1;
                  addr140:
                  while(true)
                  {
                     this.§3!H§ = 0;
                     addr123:
                     while(_loc2_)
                     {
                     }
                     continue loop0;
                  }
                  while(!(_loc1_ && _loc2_))
                  {
                     §?>§.objects.setGroundTextureEnabled(true);
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        addr38:
                        if(!(_loc1_ && this))
                        {
                           addr45:
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 return;
                              }
                              §§goto(addr123);
                           }
                           while(true)
                           {
                              this.§%w§ = false;
                              §§goto(addr45);
                           }
                           addr118:
                        }
                        while(true)
                        {
                           this.changeGameState(§?;§);
                           loop7:
                           while(true)
                           {
                              this.§2!J§ = §22§;
                              while(!_loc1_)
                              {
                                 §]W§(true);
                                 while(_loc2_ || this)
                                 {
                                    continue loop7;
                                 }
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr38);
                        }
                     }
                     §§goto(addr82);
                  }
               }
            }
         }
         while(true)
         {
            this.§ set§ = 0;
            §§goto(addr118);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            param1 = §?>§.update(param1,true);
            while(true)
            {
               this.§^!J§(param1);
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§]l§(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §^!J§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§3!H§ != 0)
            {
               if(!(_loc3_ && this))
               {
                  §?>§.camera.adjustManualScale(this.§3!H§ > 0,param1 * §%!6§);
                  addr44:
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §?>§.clearLevel();
            do
            {
               removeEventListeners();
               do
               {
                  this.§0S§ = -1;
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(_loc2_ && _loc1_);
            
         }
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
      
      public function §?`§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§?>§.camera.mCurrentCameraSliderLocation >= §9!,§.§<!z§)
            {
               while(!§?>§.objects.isWorldAtSleep())
               {
                  if(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        addr47:
                        §§push(false);
                        if(!(_loc1_ && _loc2_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr74:
                        return false;
                     }
                     return §§pop();
                  }
                  if(_loc2_)
                  {
                     break;
                  }
               }
               §§push(true);
               if(!_loc1_)
               {
                  return §§pop();
               }
               §§goto(addr47);
            }
            §§goto(addr74);
         }
         §§goto(addr47);
      }
      
      public function §+!i§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§9!,§ = §?>§.camera;
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_.§#!g§);
            loop0:
            while(true)
            {
               §§push(0);
               addr113:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     addr28:
                     return;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§#!g§);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§#!g§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(this.§>"F§(false));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr448:
                        loop20:
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(!§§pop());
                              while(true)
                              {
                              }
                           }
                           loop4:
                           while(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(param1);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§?;§);
                                    loop7:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(param1);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(LEVEL_STATE_SLINGSHOT);
                                          loop9:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(param1);
                                             while(true)
                                             {
                                                §§push(§&7§);
                                                addr397:
                                                addr398:
                                                while(§§pop() != §§pop())
                                                {
                                                   §§push(param1);
                                                   continue loop8;
                                                }
                                                addr398:
                                                this.§,!!§ = 5000;
                                                addr401:
                                                §?>§.particles.moveTrailsNewToOld();
                                                addr28:
                                                this.§0S§ = param1;
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  §§goto(addr28);
                                                                  addr411:
                                                               }
                                                               return;
                                                            }
                                                            addr223:
                                                            §§goto(addr28);
                                                            addr290:
                                                         }
                                                         addr193:
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_ || param2)
                                                            {
                                                               §?>§.camera.goToBirdView();
                                                               addr205:
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  §?>§.slingshot.makeBirdsJumpForJoy();
                                                                  addr179:
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr171:
                                                                     this.playWinningSoundVictory1();
                                                                     §§goto(addr28);
                                                                     addr174:
                                                                  }
                                                                  addr257:
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(this.§3m§);
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr193);
                                                                           }
                                                                           §§goto(addr171);
                                                                        }
                                                                        addr270:
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(_loc4_ && param1)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(_loc4_ && this)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           addr287:
                                                                           §?>§.camera.goToBirdView();
                                                                           §§goto(addr290);
                                                                        }
                                                                        §§goto(addr223);
                                                                     }
                                                                     break loop7;
                                                                  }
                                                                  break loop9;
                                                               }
                                                               if(_loc3_ || param1)
                                                               {
                                                                  this.playWinningSoundVictory2();
                                                                  this.§,!!§ = 1200;
                                                                  §§goto(addr270);
                                                                  §§push(this.§3m§);
                                                                  addr295:
                                                                  addr318:
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop20;
                                                               }
                                                               §?>§.camera.goToCastleView();
                                                               §§goto(addr28);
                                                            }
                                                            break loop4;
                                                         }
                                                         addr323:
                                                         if(_loc3_ || this)
                                                         {
                                                         }
                                                         §§goto(addr28);
                                                         addr419:
                                                      }
                                                      addr143:
                                                      if(_loc3_ || param1)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc3_ || param2)
                                                            {
                                                               this.playFailSound();
                                                               addr161:
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     this.§,!!§ = 1200;
                                                                     addr93:
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §?>§.camera.goToCastleView();
                                                                           addr74:
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 §?>§.objects.makePigsSmile(5);
                                                                                 addr60:
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc3_ || param2)
                                                                                    {
                                                                                       §§goto(addr28);
                                                                                    }
                                                                                    §§goto(addr295);
                                                                                 }
                                                                                 §§goto(addr174);
                                                                              }
                                                                              §§goto(addr161);
                                                                           }
                                                                           §§goto(addr93);
                                                                        }
                                                                        §§goto(addr401);
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                                  this.§,h§ = §#3§;
                                                                  addr335:
                                                                  if(_loc3_)
                                                                  {
                                                                     §?>§.camera.goToCastleView();
                                                                     §§goto(addr323);
                                                                  }
                                                                  continue loop5;
                                                                  addr365:
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         addr240:
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(_loc3_ || param2)
                                                            {
                                                               this.§,!!§ = 1200;
                                                               §§goto(addr257);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr74);
                                                }
                                                §§goto(addr60);
                                                addr114:
                                                if(_loc4_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                if(_loc4_ && param2)
                                                {
                                                   continue loop6;
                                                }
                                                §§push(§0!+§);
                                                if(!_loc4_)
                                                {
                                                   addr131:
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         while(!_loc4_)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §§push(param1);
                                                               loop14:
                                                               for(; !_loc4_; if(_loc4_ && _loc3_)
                                                               {
                                                                  continue;
                                                               },§§push(LEVEL_STATE_VICTORY1_SLINGSHOT),while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§goto(addr105);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr301);
                                                               },§§goto(addr240))
                                                               {
                                                                  §§push(§5!N§);
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 this.§,!!§ = 2000;
                                                                                 §§goto(addr365);
                                                                              }
                                                                              §§goto(addr401);
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                        §§goto(addr335);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(param1);
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(LEVEL_STATE_VICTORY2_END);
                                                                           addr301:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(param1);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§push(param1);
                                                                                    addr105:
                                                                                    continue loop16;
                                                                                    if(_loc4_ && param1)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr114);
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr205);
                                                                     §§goto(addr131);
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         continue loop9;
                                                         addr378:
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            §§goto(addr143);
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr397);
                                                      }
                                                   }
                                                   §§goto(addr345);
                                                }
                                                §§goto(addr237);
                                             }
                                          }
                                          §?>§.camera.goToBirdView();
                                          §§goto(addr411);
                                       }
                                    }
                                    this.§,!!§ = 2000;
                                    §§goto(addr419);
                                 }
                              }
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr427);
               }
            }
         }
         §§goto(addr448);
      }
      
      protected function playWinningSoundVictory1() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!O§.§'N§();
         }
         do
         {
            §<!O§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected function playWinningSoundVictory2() : void
      {
      }
      
      protected function playFailSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<!O§.§'N§();
         }
         do
         {
            §<!O§.playSound("LevelFailedPigs1");
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function §01§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§,!!§ = 2000;
         }
         do
         {
            this.§%w§ = false;
            do
            {
               this.§ set§ = 2000;
               do
               {
                  this.changeGameState(§]o§.LEVEL_STATE_SLINGSHOT,true);
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function §"O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ set§ = Math.max(this.§ set§,param1);
         }
      }
      
      protected function §;!"§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§?>§.slingshot.mSlingShotState == §3!n§.§ !l§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr56:
                     return !§?>§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §]l§(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = false;
         var _loc4_:§5"$§ = null;
         var _loc5_:* = false;
         var _loc6_:§ 6§ = null;
         if(_loc7_)
         {
            §§push(this);
            §§push(this.§2!J§);
            if(_loc7_ || _loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§2!J§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§%w§);
               if(!(_loc8_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        continue;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§,h§);
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop() - 1);
                        }
                        §§pop().§,h§ = §§pop();
                        if(!_loc8_)
                        {
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(!§?>§.camera.isOnCastleView());
                                 loop4:
                                 while(_loc7_ || _loc2_)
                                 {
                                    if(_loc7_ || _loc2_)
                                    {
                                       if(_loc7_)
                                       {
                                          addr1009:
                                          §§push(§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§pop();
                                                      if(_loc7_)
                                                      {
                                                         §§push(§?>§.camera.mCurrentAction == §9!,§.§[A§);
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            loop8:
                                                            while(_loc7_)
                                                            {
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  loop24:
                                                                  while(§§pop())
                                                                  {
                                                                     loop62:
                                                                     while(true)
                                                                     {
                                                                        this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                        loop63:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              addr987:
                                                                              break loop24;
                                                                           }
                                                                           loop64:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr1109:
                                                                                 §§push(this.§,!!§);
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc8_ && _loc2_))
                                                                                    {
                                                                                       §§push(0);
                                                                                       loop31:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(§§pop() <= §§pop())
                                                                                             {
                                                                                                if(!(_loc8_ && param1))
                                                                                                {
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(Boolean(§?>§.objects.hasBirds()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr1141:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            addr1142:
                                                                                                            addr1172:
                                                                                                            while(!_loc8_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  addr1146:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr1147:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(this.§,h§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc7_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop34;
                                                                                                                                 }
                                                                                                                                 §§push(0);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr1083:
                                                                                                                              addr1155:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr1261:
                                                                                                                              if(§?>§.slingshot.updateScoreForRemainingBirds())
                                                                                                                              {
                                                                                                                                 if(!(_loc8_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    this.§,!!§ = 1000;
                                                                                                                                    addr1272:
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr1292);
                                                                                                                                 }
                                                                                                                                 addr1287:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                              }
                                                                                                                              §§goto(addr1292);
                                                                                                                           }
                                                                                                                           addr1292:
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        addr1147:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr1095:
                                                                                                                        addr1239:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§push(this.§3m§);
                                                                                                                              break loop4;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§,!!§ = 2000;
                                                                                                                              addr1099:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§2!J§ = 0;
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 §§goto(addr1272);
                                                                                                                              }
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(_loc6_ = §?>§.levelObjects.activeObject as § 6§)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr1172:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                                                                     addr1180:
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr1191:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           break loop8;
                                                                                                                        }
                                                                                                                        addr1191:
                                                                                                                     }
                                                                                                                     addr1100:
                                                                                                                     §§goto(addr1272);
                                                                                                                     addr1182:
                                                                                                                  }
                                                                                                                  addr1188:
                                                                                                                  §§push(!§?>§.camera.isOnCastleView());
                                                                                                                  if(!§?>§.camera.isOnCastleView())
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr1172);
                                                                                                                  }
                                                                                                                  §§goto(addr1100);
                                                                                                                  addr1207:
                                                                                                                  addr1171:
                                                                                                               }
                                                                                                               §§goto(addr1287);
                                                                                                            }
                                                                                                            §§goto(addr1100);
                                                                                                         }
                                                                                                      }
                                                                                                      addr1140:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr1211:
                                                                                                      §§push(this.§,!!§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         addr1212:
                                                                                                         loop33:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               addr1213:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§,!!§ = 0;
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     addr1218:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§0S§);
                                                                                                                        loop17:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§?!Z§);
                                                                                                                           loop18:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() != §§pop())
                                                                                                                              {
                                                                                                                                 §§push(this.§0S§);
                                                                                                                                 loop19:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§5!N§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                       {
                                                                                                                                          §§push(this.§0S§);
                                                                                                                                          if(!(_loc8_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(§?;§);
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!(_loc7_ || param1))
                                                                                                                                                {
                                                                                                                                                   break loop19;
                                                                                                                                                }
                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(this.§0S§);
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop19;
                                                                                                                                                      }
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop17;
                                                                                                                                                      }
                                                                                                                                                      §§push(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() == §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§?>§.camera.isOnCastleView()));
                                                                                                                                                                  if(_loc8_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     loop22:
                                                                                                                                                                     while(!(_loc8_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           loop23:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§?>§.camera.mCurrentAction == §9!,§.§[A§);
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr768:
                                                                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    loop21:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc8_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc7_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr793:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.changeGameState(§?!Z§);
                                                                                                                                                                                                      if(_loc7_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc7_ || param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop23;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop21;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1099);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1261);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1287);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr793:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr952);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr819);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr957);
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop18;
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                       §§goto(addr768);
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop18;
                                                                                                                                                                                    addr775:
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop22;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop4;
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop7;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop8;
                                                                                                                                                                     addr880:
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop6;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop5;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1142);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1095);
                                                                                                                                                                  §§goto(addr1261);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1096);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr890);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§0S§);
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1287);
                                                                                                                                                      }
                                                                                                                                                      addr1236:
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            break loop6;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1239);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§0S§);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr1252:
                                                                                                                                                   if(§§pop() == LEVEL_STATE_VICTORY1_SLINGSHOT)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         break loop6;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1287);
                                                                                                                                                   }
                                                                                                                                                   break loop18;
                                                                                                                                                }
                                                                                                                                                if(_loc7_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc7_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop63;
                                                                                                                                                   }
                                                                                                                                                   §§push(this.§,!!§);
                                                                                                                                                   if(_loc7_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               addr1258:
                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1261);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1272);
                                                                                                                                                               }
                                                                                                                                                               break loop18;
                                                                                                                                                            }
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               addr951:
                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop62;
                                                                                                                                                                     }
                                                                                                                                                                     this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                                                                                                                                  }
                                                                                                                                                                  addr952:
                                                                                                                                                               }
                                                                                                                                                               addr819:
                                                                                                                                                               break loop18;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1272);
                                                                                                                                                         }
                                                                                                                                                         addr946:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1083);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1091);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr1257:
                                                                                                                                                      §§push(0);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1258);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1272);
                                                                                                                                                §§goto(addr1287);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1236);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop64;
                                                                                                                                    }
                                                                                                                                    §§push(§&7§);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1236);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1252);
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                                 addr1105:
                                                                                                                              }
                                                                                                                              if(_loc7_ || param1)
                                                                                                                              {
                                                                                                                                 §?>§.updatePigAnimations(param1);
                                                                                                                                 §§goto(addr1207);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1272);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1272);
                                                                                                                        }
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                     addr1192:
                                                                                                                  }
                                                                                                                  §§goto(addr1287);
                                                                                                               }
                                                                                                               addr1213:
                                                                                                            }
                                                                                                            §§goto(addr1192);
                                                                                                         }
                                                                                                      }
                                                                                                      addr1211:
                                                                                                      addr1227:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1272);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §?>§.updatePigAnimations(param1);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr1025:
                                                                                                   continue loop3;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1239);
                                                                                          }
                                                                                          §§goto(addr1212);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1211);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1180);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1272);
                                                                  addr975:
                                                               }
                                                               §§goto(addr1188);
                                                            }
                                                            if(!(_loc8_ && this))
                                                            {
                                                               addr1170:
                                                               §§goto(addr1171);
                                                               §§push(!§§pop());
                                                            }
                                                            break loop0;
                                                         }
                                                         addr965:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr1145);
                                                }
                                                §§goto(addr1257);
                                                §§push(this.§,!!§);
                                             }
                                             §§goto(addr975);
                                          }
                                       }
                                       §§goto(addr1140);
                                    }
                                    §§goto(addr1147);
                                 }
                                 addr1031:
                                 if(§§pop())
                                 {
                                    continue loop2;
                                 }
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                    if(_loc7_ || this)
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr1272);
                                 }
                                 else
                                 {
                                    §§goto(addr1239);
                                 }
                              }
                           }
                           addr1065:
                        }
                        §§goto(addr1261);
                     }
                  }
                  else
                  {
                     loop38:
                     while(true)
                     {
                        §§push(this.§2!J§);
                        if(!(_loc8_ && _loc2_))
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                              §§push(§§pop() <= §§pop());
                              loop39:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop40:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop41:
                                       while(true)
                                       {
                                          §§pop();
                                          loop42:
                                          while(true)
                                          {
                                             §§push(this.§>"F§(false));
                                             loop43:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                if(_loc7_ || _loc3_)
                                                {
                                                   loop44:
                                                   while(§§pop())
                                                   {
                                                      loop45:
                                                      while(true)
                                                      {
                                                         §§push(-1);
                                                         if(!_loc8_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               this.§2!J§ = §22§;
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(Boolean(§?>§.objects.isWorldAtSleep()));
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        loop46:
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           loop47:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop48:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          §§push(this.§%w§);
                                                                                          while(_loc7_)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             loop50:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc7_ || param1)
                                                                                                         {
                                                                                                            §§push(this.§ set§);
                                                                                                            if(_loc7_ || this)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc7_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  if(_loc7_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc7_ || this))
                                                                                                                     {
                                                                                                                        continue loop47;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           §§push(!§?>§.objects.isPigsAlive());
                                                                                                                           loop52:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc7_ || this))
                                                                                                                              {
                                                                                                                                 continue loop41;
                                                                                                                              }
                                                                                                                              §§push(§§pop());
                                                                                                                              loop53:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          continue loop50;
                                                                                                                                       }
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc7_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§3m§);
                                                                                                                                          loop54:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(_loc7_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!(_loc8_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop53;
                                                                                                                                                               }
                                                                                                                                                               if(_loc8_ && this)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(!(_loc8_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§2!W§);
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop54;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1147);
                                                                                                                                                                        }
                                                                                                                                                                        addr39:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1155);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1009);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                                                                 if(_loc7_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§<"7§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(false)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr39);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr732);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1239);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr236);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1272);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1105);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr830);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1025);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§;!"§());
                                                                                                                                                                        if(!(_loc8_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           break loop48;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr56:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1031);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1188);
                                                                                                                                                         }
                                                                                                                                                         continue loop40;
                                                                                                                                                         addr99:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr180);
                                                                                                                                                   }
                                                                                                                                                   break loop0;
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop52;
                                                                                                                                          }
                                                                                                                                          §§goto(addr202);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1272);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr99);
                                                                                                                              }
                                                                                                                              §§goto(addr965);
                                                                                                                           }
                                                                                                                           continue loop42;
                                                                                                                        }
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(this.§%w§);
                                                                                                                           if(!(_loc8_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(!(_loc8_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!(_loc8_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr309:
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr314:
                                                                                                                                             §§pop();
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(!§?>§.objects.isPigsAlive());
                                                                                                                                                if(!(_loc8_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr268:
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr202:
                                                                                                                                                      §§push(this.§%w§);
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!(_loc8_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_ && _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop48;
                                                                                                                                                               }
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     §§push(this.§;!"§());
                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr314);
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop46;
                                                                                                                                                                        }
                                                                                                                                                                        addr180:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop42;
                                                                                                                                                                              }
                                                                                                                                                                              this.§ set§ = 15000;
                                                                                                                                                                              if(_loc7_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§%w§ = true;
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr732:
                                                                                                                                                                                    §§push(this.§>"F§(false));
                                                                                                                                                                                    if(!(_loc8_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr742:
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc8_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr750:
                                                                                                                                                                                             §?>§.gameOver(_loc2_);
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop44;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1239);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1109);
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop44;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1145);
                                                                                                                                                                                    addr129:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr987);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr793);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1188);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr129);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr742);
                                                                                                                                                                     addr236:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1147);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr180);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1141);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1170);
                                                                                                                                                      }
                                                                                                                                                      addr383:
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         addr386:
                                                                                                                                                         if(!(_loc7_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            continue loop38;
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§ set§);
                                                                                                                                                         if(_loc7_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(6000);
                                                                                                                                                            if(!(_loc8_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                               continue loop46;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1212);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1211);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1218);
                                                                                                                                                   }
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      this.§ set§ = 6000;
                                                                                                                                                      if(_loc7_ || this)
                                                                                                                                                      {
                                                                                                                                                         this.§%w§ = true;
                                                                                                                                                         if(_loc7_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop45;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1182);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1109);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1099);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1145);
                                                                                                                                             }
                                                                                                                                             §§goto(addr750);
                                                                                                                                          }
                                                                                                                                          §§goto(addr268);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1188);
                                                                                                                                    }
                                                                                                                                    §§goto(addr383);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1146);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1009);
                                                                                                                        }
                                                                                                                        §§goto(addr1065);
                                                                                                                        §§goto(addr1188);
                                                                                                                     }
                                                                                                                     addr351:
                                                                                                                  }
                                                                                                                  §§goto(addr1145);
                                                                                                               }
                                                                                                               §§goto(addr951);
                                                                                                            }
                                                                                                            §§goto(addr1257);
                                                                                                         }
                                                                                                         §§goto(addr977);
                                                                                                      }
                                                                                                      §§goto(addr1147);
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr879);
                                                                                          }
                                                                                          continue loop43;
                                                                                       }
                                                                                       §§goto(addr1099);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                              addr583:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr586:
                                                                                    if(_loc4_ = this.§%!U§())
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc4_.§>6§);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(_loc4_.§=!c§ > 3000);
                                                                                                         addr623:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr661:
                                                                                                         if(false)
                                                                                                         {
                                                                                                            addr663:
                                                                                                         }
                                                                                                         §§goto(addr732);
                                                                                                      }
                                                                                                      §§goto(addr732);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr727:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr690:
                                                                                                §§push(_loc4_.§>6§);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§goto(addr727);
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc7_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         this.§2!J§ = §22§;
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr715:
                                                                                                         if(_loc8_ && this)
                                                                                                         {
                                                                                                            addr730:
                                                                                                            _loc2_ = int(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                            this.§<"7§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                            §§goto(addr715);
                                                                                                            addr728:
                                                                                                            addr731:
                                                                                                            addr729:
                                                                                                         }
                                                                                                         §§goto(addr663);
                                                                                                      }
                                                                                                      §§goto(addr663);
                                                                                                   }
                                                                                                   addr710:
                                                                                                }
                                                                                                §§goto(addr663);
                                                                                             }
                                                                                             §§goto(addr728);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr669:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr670:
                                                                                                §§push(§0!+§);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      addr681:
                                                                                                      §§push(int(§§pop()));
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         this.§<"7§(§0!+§);
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§goto(addr670);
                                                                                                            }
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr661);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr731);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr710);
                                                                                                            }
                                                                                                            §§goto(addr663);
                                                                                                         }
                                                                                                         addr684:
                                                                                                         §§goto(addr684);
                                                                                                      }
                                                                                                      §§goto(addr729);
                                                                                                   }
                                                                                                   §§goto(addr730);
                                                                                                }
                                                                                                §§goto(addr681);
                                                                                             }
                                                                                             §§goto(addr732);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr623);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.§""<§());
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§goto(addr669);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr690);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr690);
                                                                                 }
                                                                                 §§goto(addr1213);
                                                                              }
                                                                              §§goto(addr732);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr586);
                                                                  }
                                                                  §§goto(addr583);
                                                               }
                                                            }
                                                            §§goto(addr954);
                                                         }
                                                         §§goto(addr1252);
                                                      }
                                                   }
                                                   §§push(this);
                                                   §§push(this.§,!!§);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() - param1);
                                                   }
                                                   §§pop().§,!!§ = §§pop();
                                                   §§goto(addr1227);
                                                   addr466:
                                                }
                                                §§goto(addr1172);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr466);
                                 }
                              }
                           }
                           §§goto(addr951);
                        }
                        break;
                     }
                     addr480:
                  }
                  §§goto(addr946);
               }
               break;
            }
            while(true)
            {
               §§pop();
               §§goto(addr1191);
            }
         }
         §§goto(addr977);
      }
      
      protected function get §3m§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§%!U§())
            {
               if(!_loc2_)
               {
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
         }
         §§goto(addr52);
      }
      
      protected function get §2!W§() : Boolean
      {
         return true;
      }
      
      public function §%!U§() : §5"$§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§5"$§ = null;
         var _loc1_:* = int(§?>§.objects.objectCount - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §?>§.objects.getObject(_loc1_) as §5"$§;
            if(_loc4_ || _loc3_)
            {
               if(_loc2_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     return _loc2_;
                  }
               }
               else
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
               }
            }
         }
         return null;
      }
      
      public function §""<§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<Y§ = null;
         var _loc1_:* = int(§?>§.objects.objectCount - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §?>§.objects.getObject(_loc1_) as §<Y§;
            if(!(_loc3_ && _loc1_))
            {
               if(_loc2_)
               {
                  if(_loc4_)
                  {
                     return true;
                  }
               }
               §§push(_loc1_);
               if(_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               _loc1_ = §§pop();
            }
         }
         return false;
      }
      
      protected function §<"7§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(!this.§%w§)
            {
               while(true)
               {
                  this.§%w§ = true;
                  addr139:
                  addr40:
                  while(true)
                  {
                  }
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  this.changeGameState(param1,param2);
                  addr51:
                  if(_loc4_ || param1)
                  {
                     if(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           loop5:
                           while(!§?>§.slingshot.mDragging)
                           {
                              loop6:
                              while(§?>§.objects.isWorldAtSleep())
                              {
                                 if(!_loc3_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          this.§ set§ = Math.min(this.§ set§,3500);
                                          while(true)
                                          {
                                             break loop6;
                                             §§goto(addr51);
                                          }
                                          addr25:
                                          return;
                                          addr101:
                                       }
                                       else
                                       {
                                          §§goto(addr139);
                                       }
                                    }
                                    else if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          continue loop6;
                                       }
                                       addr110:
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr101);
                              }
                              while(true)
                              {
                                 §§push(this.§ set§);
                                 if(!_loc3_)
                                 {
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr40);
                                          }
                                          §§goto(addr51);
                                       }
                                       §§goto(addr25);
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(6000);
                                    }
                                    addr119:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       addr131:
                                    }
                                    continue loop5;
                                    return;
                                 }
                                 §§goto(addr25);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr25);
                     }
                     addr107:
                     return;
                  }
                  §§goto(addr25);
               }
            }
            while(true)
            {
               §§goto(addr119);
               §§goto(addr139);
            }
         }
         §§goto(addr110);
      }
      
      public function §>"F§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§0S§);
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
                                          §§push(this.§0S§);
                                          while(true)
                                          {
                                             §§push(§0!+§);
                                             addr167:
                                             addr204:
                                             while(_loc2_ || _loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() == §§pop());
                                                loop15:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         break loop15;
                                                      }
                                                      addr233:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§0S§);
                                                   continue loop0;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                addr205:
                                                while(_loc2_ || param1)
                                                {
                                                   continue loop9;
                                                }
                                                continue loop2;
                                                §§goto(addr167);
                                             }
                                             addr137:
                                             §§push(this.§0S§);
                                             if(!(_loc2_ || param1))
                                             {
                                                continue;
                                             }
                                             if(_loc3_ && param1)
                                             {
                                                continue loop0;
                                             }
                                             §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr44:
                                                §§push(§§pop() == §§pop());
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                if(_loc2_ || _loc3_)
                                                {
                                                   addr60:
                                                   if(_loc2_ || param1)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop19:
                                                            while(!_loc3_)
                                                            {
                                                               if(_loc2_ || this)
                                                               {
                                                                  §§push(param1);
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop23:
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       §§pop();
                                                                                       while(!(_loc3_ && param1))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§,!!§ <= 0);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                while(!(_loc3_ && this))
                                                                                                {
                                                                                                   if(_loc3_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§goto(addr129);
                                                                                                   §§goto(addr44);
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             if(_loc3_ && param1)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             §§goto(addr177);
                                                                                          }
                                                                                          §§pop();
                                                                                          if(_loc3_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr137);
                                                                                       }
                                                                                       continue loop19;
                                                                                    }
                                                                                    §§goto(addr205);
                                                                                 }
                                                                                 §§goto(addr69);
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr181:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              §§goto(addr69);
                                                                           }
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr60);
                                                                  }
                                                                  addr140:
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                      addr69:
                                                      return §§pop();
                                                   }
                                                   §§goto(addr140);
                                                }
                                                §§goto(addr105);
                                             }
                                             §§goto(addr167);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr181);
                                 }
                              }
                           }
                        }
                        §§goto(addr233);
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      public function §5r§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§0S§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc2_ || this)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           addr73:
                           §§pop();
                           return this.§0S§ == §0!+§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1.delta != 0)
            {
               if(!_loc3_)
               {
                  addr49:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§9! §);
            if(!_loc3_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr281:
                        while(true)
                        {
                           §§pop();
                           addr282:
                           while(true)
                           {
                              §§push(!§?>§.mReadyToRun);
                           }
                        }
                        addr281:
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
                                 §§push(Boolean(§?>§.slingshot.mDragging));
                                 loop5:
                                 while(true)
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
                                             while(true)
                                             {
                                                §§push(Boolean(§?>§.camera.mDragging));
                                                while(_loc4_)
                                                {
                                                   loop16:
                                                   for(; !(_loc3_ && param1); while(true)
                                                   {
                                                      if(!(_loc4_ || this))
                                                      {
                                                         continue loop16;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§pop();
                                                      §§goto(addr168);
                                                   },continue loop5)
                                                   {
                                                      §§pop();
                                                      loop17:
                                                      do
                                                      {
                                                         §§push(this.§0S§);
                                                         while(true)
                                                         {
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§push(LEVEL_STATE_SLINGSHOT);
                                                               while(_loc4_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break;
                                                                                 addr235:
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 addr71:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       if(!§?>§.isPlayingReplay())
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §?>§.changeReplaySpeed(param1);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr98:
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                              }
                                                                              while(!_loc3_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr238:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr239);
                                                                                    }
                                                                                    addr238:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop23;
                                                                                 }
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           while(!(_loc3_ && param1))
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              §§goto(addr149);
                                                                           }
                                                                           addr149:
                                                                           continue loop6;
                                                                        }
                                                                        §§goto(addr238);
                                                                     }
                                                                     while(_loc4_)
                                                                     {
                                                                        §§goto(addr192);
                                                                     }
                                                                     continue loop3;
                                                                     addr190:
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               while(_loc4_)
                                                               {
                                                                  §§goto(addr190);
                                                                  §§push(§§pop() == §§pop());
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§goto(addr235);
                                                                     §§push(§§pop());
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               addr110:
                                                               addr226:
                                                               addr187:
                                                            }
                                                            §§push(this.§0S§);
                                                            break;
                                                            if(!_loc4_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§&7§);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr71);
                                                                  }
                                                                  §§goto(addr281);
                                                               }
                                                               §§goto(addr110);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr226);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr187);
                                                         }
                                                      }
                                                      while(_loc3_ && this);
                                                      
                                                      §?>§.camera.adjustManualScale(param1,param2 == 0 ? Number(§9!,§.§&N§) : Number(param2));
                                                      §§goto(addr98);
                                                   }
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§goto(addr225);
                                             §§push(this.§0S§);
                                          }
                                          §§goto(addr220);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr262);
                        }
                     }
                  }
               }
            }
            §§goto(addr281);
         }
         §§goto(addr262);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §3@§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§3!H§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Boolean = false;
         if(!_loc6_)
         {
            if(!this.§9! §)
            {
               if(!_loc6_)
               {
                  return;
               }
            }
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         if(_loc5_)
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
                     §5!^§.§-!,§();
                     loop2:
                     while(true)
                     {
                        §§push(this.§>"F§(false));
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 if(§?>§.isPlayingReplay())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §?>§.camera.startDragging(param1,param2);
                                       loop6:
                                       while(!(_loc6_ && param2))
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(_loc6_ && _loc3_)
                                                {
                                                   §§goto(addr303);
                                                }
                                                §?>§.resetReplaySpeed();
                                                if(_loc6_ && param2)
                                                {
                                                   continue;
                                                }
                                                if(_loc5_ || this)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      return;
                                                   }
                                                   loop7:
                                                   while(_loc6_ && _loc3_)
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(_loc5_ || param2)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(§?>§.levelObjects.activeObject is § 6§);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(!_loc6_)
                                                                        {
                                                                           §§push(§ 6§(§?>§.levelObjects.activeObject).canActivateSpecialPower);
                                                                        }
                                                                        continue loop2;
                                                                        addr245:
                                                                     }
                                                                     loop10:
                                                                     while(§?>§.slingshot.canStartDragging(this.§#"5§))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ && param1)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(!(_loc5_ || param2))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr210);
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          break loop12;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    addr219:
                                                                                 }
                                                                              }
                                                                              addr220:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     §?>§.camera.startDragging(param1,param2);
                                                                     continue loop7;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     continue loop3;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      this.changeGameState(LEVEL_STATE_SLINGSHOT);
                                                      break loop6;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      break loop4;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             addr281:
                                             if(!_loc6_)
                                             {
                                                return;
                                             }
                                             continue loop0;
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   continue loop5;
                                                }
                                                addr262:
                                                while(true)
                                                {
                                                   §§goto(addr219);
                                                }
                                             }
                                             addr210:
                                             return;
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr103);
                                    }
                                 }
                                 §§goto(addr267);
                              }
                              addr103:
                              return;
                           }
                           §§goto(addr281);
                        }
                     }
                  }
               }
               addr303:
               return;
            }
         }
         §§goto(addr181);
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§9! §);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §5!^§.§!!x§();
                     loop2:
                     while(true)
                     {
                        if(this.§0S§ == §?;§)
                        {
                           loop3:
                           while(true)
                           {
                              this.changeGameState(LEVEL_STATE_SLINGSHOT);
                              addr208:
                              while(true)
                              {
                              }
                              while(true)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(!§?>§.slingshot.canShootTheBird)
                                 {
                                    §?>§.slingshot.cancelDragging();
                                    while(true)
                                    {
                                       if(_loc3_ && param2)
                                       {
                                          while(!(_loc3_ && param1))
                                          {
                                             §?>§.slingshot.shoot();
                                          }
                                          addr216:
                                          return;
                                          addr137:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr73);
                                       }
                                       §§goto(addr147);
                                    }
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr208);
                           }
                        }
                        while(true)
                        {
                           if(§?>§.slingshot.mDragging)
                           {
                              §§goto(addr172);
                           }
                           addr73:
                           loop13:
                           while(§?>§.camera.mDragging)
                           {
                              loop14:
                              while(!_loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(!isNaN(param1));
                                    if(!_loc3_)
                                    {
                                       if(!§§pop())
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   §?>§.camera.dragToNewPoint(param1,param2);
                                                }
                                                loop16:
                                                while(true)
                                                {
                                                   if(_loc4_ || param2)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break loop15;
                                                         addr172:
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            §?>§.camera.stopDragging();
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     break loop13;
                                                                  }
                                                                  break loop8;
                                                               }
                                                               continue loop14;
                                                            }
                                                            continue loop16;
                                                         }
                                                         addr29:
                                                      }
                                                      while(!_loc3_)
                                                      {
                                                         this.§#"5§ = §?>§.screenToBox2D(param1,param2,this.§#"5§);
                                                         while(_loc4_ || this)
                                                         {
                                                            §?>§.slingshot.setNewCoordinatesForRubber(this.§#"5§.x,this.§#"5§.y,false);
                                                            break loop16;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop8;
                                             }
                                             §§goto(addr29);
                                             addr112:
                                             §§push(!isNaN(param2));
                                             if(!(_loc3_ && param2))
                                             {
                                                continue;
                                             }
                                             while(!_loc3_)
                                             {
                                                §§pop();
                                                continue loop8;
                                             }
                                             continue loop0;
                                             addr90:
                                          }
                                          while(true)
                                          {
                                             continue loop13;
                                          }
                                          addr131:
                                          addr52:
                                       }
                                    }
                                    §§goto(addr90);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.changeGameState(§&7§);
                                    }
                                    addr147:
                                 }
                                 §§goto(addr131);
                              }
                              continue loop9;
                           }
                           return;
                           §§goto(addr208);
                        }
                     }
                  }
               }
               §§goto(addr216);
            }
         }
         §§goto(addr126);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(this.§9! §)
            {
               while(true)
               {
                  if(!§?>§.slingshot.mDragging)
                  {
                     if(§?>§.camera.mDragging)
                     {
                        if(!(_loc4_ && this))
                        {
                           §?>§.camera.dragToNewPoint(param1,param2);
                        }
                        while(_loc3_)
                        {
                        }
                        continue;
                        addr97:
                     }
                     loop2:
                     while(true)
                     {
                        this.§]!l§ = param1;
                        loop3:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 if(_loc4_ && this)
                                 {
                                    §§goto(addr146);
                                 }
                                 this.§`U§ = param2;
                                 if(!(_loc3_ || param2))
                                 {
                                    continue;
                                 }
                                 if(!(_loc4_ && param1))
                                 {
                                    break loop2;
                                 }
                                 addr124:
                                 while(true)
                                 {
                                    this.§#"5§ = §?>§.screenToBox2D(param1,param2,this.§#"5§);
                                    addr142:
                                    while(true)
                                    {
                                       §?>§.slingshot.setNewCoordinatesForRubber(this.§#"5§.x,this.§#"5§.y,false);
                                       break loop3;
                                    }
                                 }
                              }
                              break;
                           }
                           §§goto(addr97);
                        }
                        while(_loc4_ && param1)
                        {
                           §§goto(addr142);
                        }
                     }
                     return;
                  }
                  §§goto(addr124);
               }
            }
            addr146:
            return;
         }
         §§goto(addr142);
      }
      
      public function §+!W§() : Point
      {
         return new Point(this.§]!l§,this.§`U§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§]!O§.§-"F§(this.§]!O§.getValue() + param1);
            loop0:
            while(true)
            {
               this.§"O§(§1!"§);
               for(; this.§0S§ == §5!N§; do
               {
                  this.§,h§ = §#3§;
               }
               while(!_loc3_);
               ,if(_loc3_ || _loc3_)
               {
                  continue loop0;
               })
               {
                  if(_loc2_)
                  {
                     continue;
                  }
               }
               addr25:
               return;
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr25);
            }
         }
         while(true)
         {
            this.§,!!§ = 2000;
            §§goto(addr70);
         }
      }
      
      override public function getScore(param1:int) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               if(§§pop() > 1)
               {
                  if(!(_loc3_ && param1))
                  {
                     return Math.floor(this.§]!O§.getValue() / param1) * param1;
                  }
                  addr70:
                  §§push(this.§]!O§.getValue());
               }
               §§goto(addr70);
            }
            return §§pop();
         }
         §§goto(addr70);
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!this.§3m§)
            {
               if(!(_loc4_ && _loc2_))
               {
                  return 0;
               }
            }
         }
         var _loc1_:Number = §6u§.getLevelForId(§6u§.currentLevel).getEagleScore(§?>§.levelItemManager,§?>§.damageScoreMultiplier);
         var _loc2_:Number = Math.min(100,this.getScore(10) / _loc1_ * 100);
         return Math.round(_loc2_);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§9! §;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§9! § = param1;
         }
      }
   }
}
