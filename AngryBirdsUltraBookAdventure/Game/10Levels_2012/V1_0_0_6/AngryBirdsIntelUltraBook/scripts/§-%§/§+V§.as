package §-%§
{
   import §"x§.§?8§;
   import §,!!§.§#!Y§;
   import §2_§.§'u§;
   import §2_§.§8![§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §=b§.§,!6§;
   import §=b§.§0d§;
   import §=b§.§`!_§;
   import §>! §.§^!c§;
   import §]+§.§=E§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §+V§ extends §+c§
   {
      
      public static const §]!]§:int = 0;
      
      public static const §>!=§:int = 1;
      
      public static const §7!Y§:int = 2;
      
      public static const §8!>§:int = 3;
      
      public static const §=!8§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §!`§:int = 7;
      
      protected static const §8!e§:Number = 0.001;
      
      public static const §^w§:Number = 2000;
      
      public static const §+D§:Number = 2500;
      
      public static const § !b§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]!]§ = 0;
            while(true)
            {
               §>!=§ = 1;
               loop1:
               while(true)
               {
                  §7!Y§ = 2;
                  loop2:
                  while(true)
                  {
                     §8!>§ = 3;
                     while(true)
                     {
                        §=!8§ = 4;
                        loop4:
                        while(!_loc1_)
                        {
                           LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                           continue loop2;
                           addr63:
                           if(!(_loc1_ && _loc1_))
                           {
                              §+D§ = 2500;
                              do
                              {
                                 if(!_loc1_)
                                 {
                                    addr42:
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr49:
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          continue;
                                       }
                                       addr109:
                                       while(true)
                                       {
                                          §!`§ = 7;
                                          §§goto(addr49);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc1_ && §+V§)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       §§push(§§findproperty(§8!e§));
                                       §§push(§#!Y§.§9!+§);
                                       if(_loc2_)
                                       {
                                          §§push(§§pop() / 100);
                                       }
                                       §§pop().§8!e§ = §§pop();
                                       while(true)
                                       {
                                          §^w§ = 2000;
                                       }
                                       §§goto(addr42);
                                    }
                                    continue loop1;
                                    addr95:
                                 }
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       §§goto(addr63);
                                    }
                                    else
                                    {
                                       §§goto(addr90);
                                    }
                                 }
                                 continue loop4;
                              }
                              while(§ !b§ = 5, !(_loc2_ || _loc1_));
                              
                              return;
                              addr35:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public var §][§:int = 0;
      
      protected var §'!"§:int = 0;
      
      public var §9!q§:Number;
      
      protected var §'!j§:Number = 0;
      
      protected var §4]§:Boolean = false;
      
      private var §>!m§:Number = 0;
      
      public var §7! §:Number = 0;
      
      protected var §!!z§:Boolean;
      
      protected var §`&§:Number = 0;
      
      protected var §0![§:Number = 0;
      
      protected var §4Z§:Boolean = true;
      
      protected var §2r§:§=E§;
      
      public function §+V§(param1:§'u§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2r§ = new §=E§();
            do
            {
               super(param1);
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§2r§.assign(0);
               while(true)
               {
                  this.§][§ = -1;
                  loop2:
                  while(true)
                  {
                     this.§'!"§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§'!j§ = 0;
                        addr120:
                        while(true)
                        {
                           this.§4]§ = false;
                           addr50:
                           if(_loc2_ || _loc1_)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr33:
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            param1 = §#!3§.update(param1,true);
            while(true)
            {
               this.§[!X§(param1);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§&H§(param1);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §[!X§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§'!"§ != 0)
            {
               if(!_loc2_)
               {
                  addr35:
                  §#!3§.camera.adjustManualScale(this.§'!"§ > 0,param1 * §8!e§);
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §#!3§.clearLevel();
            while(true)
            {
               removeEventListeners();
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            this.§][§ = -1;
            if(!_loc2_)
            {
               if(!(_loc2_ && this))
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
         if(!(_loc1_ && _loc1_))
         {
            super.addEventListeners();
         }
      }
      
      public function §7W§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(§#!3§.camera.mCurrentCameraSliderLocation >= §#!Y§.§0!#§)
            {
               loop0:
               while(!§#!3§.objects.isWorldAtSleep())
               {
                  if(_loc2_ || this)
                  {
                     if(_loc2_ || this)
                     {
                        addr77:
                        §§push(false);
                        if(_loc2_ || _loc1_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr94:
                        return false;
                     }
                     return §§pop();
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               §§push(true);
               if(_loc2_ || this)
               {
                  return §§pop();
               }
               §§goto(addr77);
            }
            §§goto(addr94);
         }
         §§goto(addr96);
      }
      
      public function §]!C§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§#!Y§ = §#!3§.camera;
         if(_loc4_)
         {
            §§push(_loc2_.§5!q§);
            loop0:
            while(true)
            {
               §§push(0);
               addr119:
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
                     §§push(_loc2_.§5!q§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§5!q§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr28);
      }
      
      public function §6K§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§5!F§(false));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr447:
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                           }
                           if(_loc4_)
                           {
                              continue;
                           }
                        }
                        continue loop0;
                     }
                     addr446:
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
                           §§push(§]!]§);
                           loop4:
                           while(§§pop() != §§pop())
                           {
                              §§push(param1);
                              loop5:
                              while(true)
                              {
                                 §§push(§>!=§);
                                 loop6:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(param1);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§7!Y§);
                                       loop8:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(param1);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§8!>§);
                                             addr347:
                                             addr362:
                                             while(true)
                                             {
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         break;
                                                      }
                                                      §§push(param1);
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                §#!3§.camera.goToCastleView();
                                                while(_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      §#!3§.particles.moveTrailsNewToOld();
                                                      addr372:
                                                      §§goto(addr28);
                                                   }
                                                }
                                                §§goto(addr28);
                                             }
                                             addr239:
                                             if(!(_loc3_ || param1))
                                             {
                                                continue;
                                             }
                                             §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      addr136:
                                                      §§push(param1);
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(§!`§);
                                                         if(!_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc3_ || param1)
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     §9'§.§0D§();
                                                                     §§goto(addr171);
                                                                  }
                                                                  §§goto(addr372);
                                                               }
                                                               §§goto(addr171);
                                                            }
                                                            addr28:
                                                            while(_loc4_)
                                                            {
                                                               §§goto(addr447);
                                                            }
                                                            addr28:
                                                            loop20:
                                                            while(true)
                                                            {
                                                               this.§][§ = param1;
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc3_ || param2)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §#!3§.camera.goToBirdView();
                                                                              loop22:
                                                                              while(!(_loc4_ && param1))
                                                                              {
                                                                                 §#!3§.slingshot.makeBirdsJumpForJoy();
                                                                                 while(true)
                                                                                 {
                                                                                    addr172:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§9'§);
                                                                                       §§push("LevelCompletedBirdsMilitary");
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                                       }
                                                                                       §§pop().playSound(§§pop());
                                                                                       addr188:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop26;
                                                                                          }
                                                                                          addr301:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§7! § = 1200;
                                                                                             addr304:
                                                                                             while(!_loc3_)
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                             if(!§#!3§.objects.mMightyEagleAdded)
                                                                                             {
                                                                                                break loop22;
                                                                                             }
                                                                                             addr233:
                                                                                             continue loop20;
                                                                                          }
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §#!3§.camera.goToBirdView();
                                                                              break;
                                                                              addr225:
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr255:
                                                                        while(_loc3_ || param2)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §#!3§.camera.goToCastleView();
                                                                              break;
                                                                           }
                                                                           if(!(_loc4_ && param2))
                                                                           {
                                                                              this.§7! § = 1200;
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    break loop4;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop21;
                                                                              addr274:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr337:
                                                                           }
                                                                           addr424:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break loop8;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              this.§>!m§ = § !b§;
                                                                           }
                                                                           continue loop20;
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        §§goto(addr424);
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop37:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && param2))
                                                                        {
                                                                           addr416:
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    break loop6;
                                                                                    addr54:
                                                                                 }
                                                                                 §#!3§.objects.makePigsSmile(5);
                                                                                 while(_loc4_ && _loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§7! § = 5000;
                                                                                       continue loop28;
                                                                                    }
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              addr171:
                                                                              while(true)
                                                                              {
                                                                                 §9'§.playSound("LevelFailedPigs1");
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(!(_loc3_ || param2))
                                                                                       {
                                                                                          break;
                                                                                          addr94:
                                                                                       }
                                                                                       this.§7! § = 1200;
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(_loc3_ || param2)
                                                                                             {
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             §§goto(addr225);
                                                                                          }
                                                                                          §§goto(addr202);
                                                                                       }
                                                                                       continue loop37;
                                                                                    }
                                                                                    addr334:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§7! § = 2000;
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 §§goto(addr304);
                                                                              }
                                                                              §§goto(addr188);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           addr416:
                                                                        }
                                                                        §§goto(addr94);
                                                                     }
                                                                  }
                                                                  §§goto(addr202);
                                                               }
                                                               §§goto(addr54);
                                                            }
                                                            return;
                                                         }
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  break;
                                                               }
                                                               addr237:
                                                               §§push(param1);
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr136);
                                                               }
                                                               continue loop9;
                                                            }
                                                            addr331:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  break;
                                                               }
                                                               §§push(param1);
                                                            }
                                                            §§goto(addr334);
                                                            while(_loc3_ || _loc3_)
                                                            {
                                                               §§push(LEVEL_STATE_VICTORY2_END);
                                                               continue loop14;
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr301);
                                                         §§goto(addr334);
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr347);
                                                §§goto(addr362);
                                             }
                                             §§goto(addr255);
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§!!z§ = false;
                                          §§goto(addr389);
                                       }
                                    }
                                 }
                                 if(!(_loc4_ && this))
                                 {
                                    §#!3§.camera.goToBirdView();
                                    §§goto(addr416);
                                 }
                                 break loop1;
                              }
                           }
                           this.§7! § = 2000;
                           §§goto(addr337);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr446);
            }
         }
         §§goto(addr416);
      }
      
      public function §1S§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!j§ = Math.max(this.§'!j§,param1);
         }
      }
      
      protected function §0!O§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§#!3§.slingshot.mSlingShotState == §8![§.§5!w§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§pop();
                     addr51:
                     return !§#!3§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §&H§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:§`!_§ = null;
         if(!_loc6_)
         {
            §§push(this);
            §§push(this.§9!q§);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§9!q§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§4]§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§'!j§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§'!j§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§'!j§);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              if(!(_loc6_ && this))
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§9!q§ = 0;
                                       loop6:
                                       while(true)
                                       {
                                          addr1118:
                                          while(true)
                                          {
                                             §§push(this.§9!q§);
                                             if(!_loc6_)
                                             {
                                                §§push(0);
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   loop9:
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
                                                               addr1128:
                                                               while(true)
                                                               {
                                                                  §§push(this.§5!F§(false));
                                                                  addr1111:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                  }
                                                               }
                                                            }
                                                            addr1127:
                                                         }
                                                         while(true)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     this.§9!q§ = §^w§;
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§#!3§.objects.isWorldAtSleep()));
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 loop21:
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop23:
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(this.§4]§);
                                                                                                      loop24:
                                                                                                      for(; !_loc6_; if(!(_loc5_ || this))
                                                                                                      {
                                                                                                         continue;
                                                                                                      },§§goto(addr87))
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            while(_loc5_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     loop28:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§'!j§);
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                              addr1048:
                                                                                                                              loop31:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop32:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       §§push(!§#!3§.objects.isPigsAlive());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            loop36:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(!§#!3§.objects.mSardineCanAdded);
                                                                                                                                                               loop37:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc6_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
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
                                                                                                                                                                                 loop62:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(!§#!3§.objects.mMightyEagleAdded);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§0!O§());
                                                                                                                                                                                                loop65:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc5_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr770:
                                                                                                                                                                                                      loop53:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§5!F§(false));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop36;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr741:
                                                                                                                                                                                                            loop90:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                               §§push(this.§7! §);
                                                                                                                                                                                                               if(_loc5_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - param1);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§7! § = §§pop();
                                                                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§7! §);
                                                                                                                                                                                                                     loop91:
                                                                                                                                                                                                                     for(; !(_loc6_ && param1); if(!(_loc6_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr463);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break loop4;
                                                                                                                                                                                                                     })
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        loop92:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop93:
                                                                                                                                                                                                                              while(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr723:
                                                                                                                                                                                                                                 if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§7! § = 0;
                                                                                                                                                                                                                                    while(!(_loc6_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§][§);
                                                                                                                                                                                                                                          loop96:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§8!>§);
                                                                                                                                                                                                                                             loop97:
                                                                                                                                                                                                                                             while(§§pop() != §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§][§);
                                                                                                                                                                                                                                                loop98:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§=!8§);
                                                                                                                                                                                                                                                   addr585:
                                                                                                                                                                                                                                                   while(_loc5_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() != §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§][§);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop96;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop98;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop96;
                                                                                                                                                                                                                                                         addr186:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr595:
                                                                                                                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§7! §);
                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                  while(!_loc6_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §#!3§.updatePigAnimations(param1);
                                                                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc5_ || param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr612:
                                                                                                                                                                                                                                                                              §§push(Boolean(§#!3§.objects.hasBirds()));
                                                                                                                                                                                                                                                                              loop108:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc5_ || param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop62;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                                                                                                                          if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop108;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr559:
                                                                                                                                                                                                                                                                                          addr559:
                                                                                                                                                                                                                                                                                          loop105:
                                                                                                                                                                                                                                                                                          while(!_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break loop97;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this.§>!m§);
                                                                                                                                                                                                                                                                                                      if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break loop4;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1396:
                                                                                                                                                                                                                                                                                                      addr1396:
                                                                                                                                                                                                                                                                                                      addr1396:
                                                                                                                                                                                                                                                                                                      addr1396:
                                                                                                                                                                                                                                                                                                      continue loop91;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr1002:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(this.§0!O§());
                                                                                                                                                                                                                                                                                                      break loop105;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr636:
                                                                                                                                                                                                                                                                                                   §§push(§#!3§.camera.mCurrentAction == §#!Y§.§!!@§);
                                                                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop32;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                                                                                                                                                                   if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop37;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr648:
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            this.§6K§(§>!=§);
                                                                                                                                                                                                                                                                                                            addr655:
                                                                                                                                                                                                                                                                                                            if(_loc6_ && param1)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  this.§]!h§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                                                                  addr907:
                                                                                                                                                                                                                                                                                                                  while(_loc5_ || this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop53;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop6;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr904:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr662:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr655);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1416);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr973:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(_loc5_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            this.§'!j§ = 15000;
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  this.§4]§ = true;
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr723);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr967:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     this.§'!j§ = 6000;
                                                                                                                                                                                                                                                                                                                     addr1018:
                                                                                                                                                                                                                                                                                                                     while(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        this.§4]§ = true;
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop16;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1015:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                                                                                                                         addr974:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop53;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr680:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          loop44:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                             addr972:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr973);
                                                                                                                                                                                                                                                                                                continue loop44;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr655);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr619:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1416);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr307);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1193);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr612);
                                                                                                                                                                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop9;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr503);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr993);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr999);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                       addr892:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                §§goto(addr894);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr893:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr891:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr835);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr480:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1038);
                                                                                                                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop31;
                                                                                                                                                                                                                                                                           addr1030:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop92;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop8;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1396);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop90;
                                                                                                                                                                                                                                                               §§goto(addr595);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr784:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr619);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop97;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(§§pop() == LEVEL_STATE_VICTORY1_SLINGSHOT)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1394);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1406);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1416:
                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §#!3§.updatePigAnimations(param1);
                                                                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break loop65;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(!§#!3§.camera.isOnCastleView());
                                                                                                                                                                                                                                                continue loop37;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1050:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§4]§);
                                                                                                                                                                                                                                                addr1052:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                                                                                                                   addr1053:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr1054);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr648);
                                                                                                                                                                                                                                       if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc6_ && param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop93;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       this.§6K§(§>!=§);
                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr181);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr648);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop36;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr967);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1063);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop28;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr681);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1030);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1128);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop65;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1041);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1400:
                                                                                                                                                                                                if(§#!3§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1406);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§6K§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr648);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr904);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr902:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr979);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr902);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1014);
                                                                                                                                                               }
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1052);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr929);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1053);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1039);
                                                                                                                                          if(!(_loc5_ || this))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr322);
                                                                                                                                          §§push(§§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1050);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               §§goto(addr1048);
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             §§goto(addr1394);
                                                                                          }
                                                                                          §§goto(addr1111);
                                                                                       }
                                                                                       §§goto(addr1048);
                                                                                    }
                                                                                 }
                                                                                 continue loop1;
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§pop();
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    §§goto(addr236);
                                                                                    §§push(§#!3§.camera.mCurrentAction == §#!Y§.§!!@§);
                                                                                 }
                                                                                 §§goto(addr1400);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr741);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr1396);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1118);
                              }
                              break;
                           }
                           if(§§pop() <= §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr1400);
                              }
                              §§goto(addr1411);
                           }
                           §§goto(addr648);
                        }
                     }
                  }
                  §§goto(addr1118);
               }
            }
         }
         §§goto(addr662);
      }
      
      protected function §]!h§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.§4]§)
            {
               if(!_loc3_)
               {
                  this.§4]§ = true;
               }
               while(true)
               {
                  addr111:
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  loop5:
                  while(true)
                  {
                     if(§#!3§.objects.isWorldAtSleep())
                     {
                        loop6:
                        while(!_loc3_)
                        {
                           this.§'!j§ = Math.min(this.§'!j§,3500);
                           loop7:
                           while(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(this.§'!j§);
                                 if(_loc4_)
                                 {
                                    §§push(0);
                                    if(_loc4_ || this)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          break;
                                       }
                                       if(_loc4_)
                                       {
                                          this.§6K§(param1,param2);
                                       }
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue loop7;
                                       }
                                       if(_loc3_ && this)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc4_ || this)
                                       {
                                          §§goto(addr20);
                                       }
                                       else
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop5;
                                          }
                                          §§goto(addr111);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(6000);
                                    }
                                    addr127:
                                 }
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       break loop6;
                                    }
                                    addr93:
                                    while(true)
                                    {
                                       if(§#!3§.slingshot.mDragging)
                                       {
                                          break loop7;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              return;
                           }
                           return;
                        }
                        return;
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr93);
               }
               addr139:
            }
            while(true)
            {
               §§goto(addr127);
               §§goto(addr139);
            }
         }
         §§goto(addr98);
      }
      
      public function §5!F§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§][§);
            loop0:
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              loop19:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§][§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§!`§);
                                             addr149:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop13:
                                                      while(§§pop())
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop15:
                                                            while(_loc2_)
                                                            {
                                                               §§push(param1);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr132:
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                              }
                                                                              break loop13;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     continue loop13;
                                                                     addr133:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr144:
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§7! § <= 0);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 break loop13;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr133);
                                                                           }
                                                                        }
                                                                        while(_loc2_)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc2_)
                                                                           {
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           continue loop20;
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              break loop13;
                                                                           }
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                                  addr143:
                                                               }
                                                               §§goto(addr132);
                                                            }
                                                            addr204:
                                                            while(true)
                                                            {
                                                               §§push(this.§][§);
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      return §§pop();
                                                   }
                                                }
                                                §§goto(addr157);
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr154);
                              }
                           }
                        }
                        §§goto(addr203);
                     }
                  }
               }
            }
         }
         §§goto(addr144);
      }
      
      public function §?J§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§][§);
            if(!_loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           addr51:
                           return this.§][§ == §!`§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr51);
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
                  addr24:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§4Z§);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr241:
                        while(true)
                        {
                           §§push(!§#!3§.mReadyToRun);
                        }
                     }
                     addr240:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§push(Boolean(§#!3§.slingshot.mDragging));
                              loop7:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr224:
                                             while(true)
                                             {
                                                §§push(Boolean(§#!3§.camera.mDragging));
                                                addr150:
                                                while(_loc3_ || this)
                                                {
                                                }
                                                continue loop7;
                                             }
                                          }
                                          addr223:
                                       }
                                       loop12:
                                       while(!§§pop())
                                       {
                                          §§push(this.§][§);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§=!8§);
                                             loop14:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop());
                                                   for(; !_loc2_; loop16:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc2_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr144:
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(this.§][§);
                                                               if(_loc3_ || this)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  §§push(§>!=§);
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc2_)
                                                                     {
                                                                        loop18:
                                                                        while(§§pop())
                                                                        {
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              if(§#!3§.isPlayingReplay())
                                                                              {
                                                                                 §#!3§.changeReplaySpeed(param1);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          break loop18;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    addr86:
                                                                                    §#!3§.camera.adjustManualScale(param1);
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       break loop12;
                                                                                    }
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          break loop18;
                                                                                       }
                                                                                       break loop7;
                                                                                    }
                                                                                    §§goto(addr224);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             §§push(this.§][§);
                                                                                             break loop19;
                                                                                          }
                                                                                          §§goto(addr231);
                                                                                       }
                                                                                       continue loop6;
                                                                                       addr186:
                                                                                       §§pop();
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr150);
                                                                              }
                                                                              §§goto(addr86);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§8!>§);
                                                                              addr123:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 addr124:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc2_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§goto(addr186);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr223);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr224);
                                                                                       addr184:
                                                                                    }
                                                                                    §§goto(addr150);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr25:
                                                                        return;
                                                                        addr79:
                                                                     }
                                                                     §§goto(addr124);
                                                                  }
                                                                  §§goto(addr123);
                                                               }
                                                               §§goto(addr122);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr79);
                                                   })
                                                   {
                                                      if(!(_loc3_ || _loc2_))
                                                      {
                                                         continue loop1;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr184);
                                             }
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr25);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr240);
                                 }
                              }
                              §§goto(addr241);
                           }
                        }
                        addr231:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr144);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §%!7§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§'!"§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(_loc6_ || param2)
         {
            if(!this.§4Z§)
            {
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(_loc6_)
            {
               dispatchEvent(_loc3_);
            }
            loop0:
            while(!_loc3_.isDefaultPrevented())
            {
               §?8§.§&#§();
               loop1:
               while(true)
               {
                  §§push(this.§5!F§(false));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || this)
                        {
                           return;
                        }
                        break;
                     }
                     if(§#!3§.isPlayingReplay())
                     {
                        §#!3§.camera.startDragging(param1,param2);
                        if(!_loc5_)
                        {
                           §§goto(addr287);
                        }
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§#!3§.activeObject));
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr179:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(this.§][§ == §7!Y§);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 continue loop0;
                                 addr179:
                              }
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                §§pop();
                                                if(_loc5_ && this)
                                                {
                                                   break;
                                                }
                                                §§push(this.§!!z§);
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   addr103:
                                                   if(!_loc5_)
                                                   {
                                                      break loop6;
                                                   }
                                                   continue loop6;
                                                }
                                                if(_loc5_)
                                                {
                                                   continue;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr179);
                                             }
                                             §§goto(addr139);
                                          }
                                          addr287:
                                          §#!3§.resetReplaySpeed();
                                          break loop2;
                                       }
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §#!3§.activatePowerup();
                                       if(!(_loc5_ && param1))
                                       {
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       addr123:
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop3;
                                       break loop2;
                                    }
                                    continue loop1;
                                 }
                                 _loc4_ = §#!3§.screenToBox2D(param1,param2);
                                 if(!(_loc5_ && param2))
                                 {
                                    if(§#!3§.slingshot.canStartDragging(_loc4_))
                                    {
                                       §#!3§.slingshot.startDragging();
                                       this.§6K§(§>!=§);
                                       addr279:
                                       if(!(_loc6_ || param2))
                                       {
                                          §§goto(addr279);
                                       }
                                       addr270:
                                    }
                                    else
                                    {
                                       §#!3§.camera.startDragging(param1,param2);
                                    }
                                    return;
                                 }
                                 §§goto(addr270);
                              }
                           }
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr287);
                  }
                  addr289:
                  return;
               }
            }
            return;
         }
         addr37:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§4Z§);
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     return;
                  }
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     §?8§.§]!%§();
                     if(_loc4_ || _loc3_)
                     {
                        if(this.§][§ == §]!]§)
                        {
                           if(_loc4_)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 this.§6K§(§>!=§);
                                 if(_loc4_ || param1)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    addr78:
                                    if(§#!3§.slingshot.mDragging)
                                    {
                                       if(!_loc5_)
                                       {
                                          _loc3_ = §#!3§.screenToBox2D(param1,param2);
                                          if(_loc4_)
                                          {
                                             §#!3§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                             for(; !§#!3§.slingshot.canShootTheBird(); if(_loc5_)
                                             {
                                                break;
                                             },if(!_loc4_)
                                             {
                                                continue;
                                             },if(false)
                                             {
                                                §§goto(addr122);
                                             },§§goto(addr152))
                                             {
                                                §#!3§.slingshot.cancelDragging();
                                                if(!(_loc5_ && param2))
                                                {
                                                   continue;
                                                }
                                                loop5:
                                                while(true)
                                                {
                                                   if(!(_loc4_ || param2))
                                                   {
                                                      while(true)
                                                      {
                                                         addr122:
                                                         while(true)
                                                         {
                                                            this.§6K§(§7!Y§);
                                                            continue loop5;
                                                         }
                                                      }
                                                      addr142:
                                                   }
                                                   addr152:
                                                   if(§#!3§.camera.mDragging)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         §§push(!isNaN(param1));
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            addr174:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr209);
                                                               }
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            addr215:
                                                            while(true)
                                                            {
                                                               §#!3§.camera.dragToNewPoint(param1,param2);
                                                               break loop0;
                                                            }
                                                            addr215:
                                                         }
                                                         while(true)
                                                         {
                                                            §#!3§.camera.stopDragging();
                                                            if(_loc5_ && param2)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr215);
                                                         }
                                                         addr209:
                                                         if(!_loc5_)
                                                         {
                                                            §§push(!isNaN(param2));
                                                         }
                                                         return;
                                                         addr196:
                                                      }
                                                   }
                                                   §§goto(addr209);
                                                }
                                             }
                                          }
                                          §#!3§.slingshot.shoot();
                                          §§goto(addr142);
                                       }
                                       §§goto(addr215);
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr209);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop0;
                                 }
                                 addr77:
                              }
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr78);
                     }
                     break;
                  }
               }
               while(true)
               {
                  §§goto(addr196);
               }
            }
            §§goto(addr174);
         }
         §§goto(addr77);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!_loc5_)
         {
            if(!this.§4Z§)
            {
               if(_loc4_)
               {
                  §§goto(addr26);
               }
               else
               {
                  §§goto(addr50);
               }
            }
            else if(§#!3§.slingshot.mDragging)
            {
               if(_loc4_)
               {
                  addr50:
                  _loc3_ = §#!3§.screenToBox2D(param1,param2);
                  if(_loc4_)
                  {
                     §#!3§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!_loc5_)
                     {
                        addr95:
                        this.§`&§ = param1;
                        if(!(_loc5_ && _loc3_))
                        {
                           this.§0![§ = param2;
                        }
                     }
                  }
                  return;
               }
            }
            else if(§#!3§.camera.mDragging)
            {
               if(_loc4_ || this)
               {
                  §#!3§.camera.dragToNewPoint(param1,param2);
               }
            }
            §§goto(addr95);
         }
         addr26:
      }
      
      public function §%!I§() : Point
      {
         return new Point(this.§`&§,this.§0![§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§2r§.assign(this.§2r§.getValue() + param1);
            while(true)
            {
               this.§1S§(§+D§);
               loop1:
               while(_loc3_ || _loc3_)
               {
                  if(this.§][§ != §=!8§)
                  {
                     return;
                  }
                  addr25:
                  while(true)
                  {
                     this.§7! § = 2000;
                     do
                     {
                        this.§>!m§ = § !b§;
                     }
                     while(_loc2_);
                     
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     §§goto(addr25);
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override public function getScore() : int
      {
         return this.§2r§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            if(!§^!c§.§5!Y§.objects.mMightyEagleAdded)
            {
               if(_loc3_)
               {
                  addr50:
                  §§push(0);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  §§push(LevelManager.§7z§(LevelManager.§%n§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
            §§goto(addr54);
         }
         §§goto(addr50);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§4Z§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4Z§ = param1;
         }
      }
   }
}
