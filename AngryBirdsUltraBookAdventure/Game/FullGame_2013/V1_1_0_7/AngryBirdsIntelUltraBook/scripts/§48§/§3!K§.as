package §48§
{
   import § var§.§ !V§;
   import § var§.§!u§;
   import § var§.§3!5§;
   import § var§.§7!u§;
   import §"!i§.LevelManager;
   import §1!B§.§7n§;
   import §40§.§1!g§;
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §[!b§.§-!Q§;
   import §`!M§.§%X§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §3!K§ extends §?x§
   {
      
      public static const §[!P§:int = 0;
      
      public static const §-!;§:int = 1;
      
      public static const §5B§:int = 2;
      
      public static const §,!3§:int = 3;
      
      public static const §0A§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §%!%§:int = 7;
      
      protected static const §?!+§:Number = 0.001;
      
      public static const §;!F§:Number = 2000;
      
      public static const §7!f§:Number = 2500;
      
      public static const §29§:int = 5;
      
      private static var §,!$§:Boolean;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §[!P§ = 0;
            loop0:
            while(true)
            {
               §-!;§ = 1;
               loop1:
               while(true)
               {
                  §5B§ = 2;
                  loop2:
                  while(true)
                  {
                     §,!3§ = 3;
                     loop3:
                     while(true)
                     {
                        §0A§ = 4;
                        loop4:
                        for(; _loc1_; if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        },if(_loc2_)
                        {
                           continue loop2;
                        },if(!_loc1_)
                        {
                           continue loop1;
                        },§7!f§ = 2500,loop10:
                        while(_loc1_)
                        {
                           while(true)
                           {
                              §29§ = 5;
                              if(_loc2_)
                              {
                                 continue loop10;
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr48);
                           }
                           return;
                        },§§goto(addr117))
                        {
                           LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                           loop5:
                           while(true)
                           {
                              LEVEL_STATE_VICTORY2_END = 6;
                              addr117:
                              while(true)
                              {
                                 §%!%§ = 7;
                                 while(true)
                                 {
                                    §§push(§§findproperty(§?!+§));
                                    §§push(§%X§.§2O§);
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§push(§§pop() / 100);
                                    }
                                    §§pop().§?!+§ = §§pop();
                                    while(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             §;!F§ = 2000;
                                             while(_loc1_ || §3!K§)
                                             {
                                                continue loop4;
                                             }
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public var §4!j§:int = 0;
      
      protected var §0!h§:int = 0;
      
      public var §"!h§:Number;
      
      protected var §&!>§:Number = 0;
      
      protected var §%i§:Boolean = false;
      
      private var §3!G§:Number = 0;
      
      public var §-!H§:Number = 0;
      
      protected var §`?§:Number = 0;
      
      protected var §@o§:Number = 0;
      
      protected var §<B§:Boolean = true;
      
      protected var §4m§:§2B§;
      
      public function §3!K§(param1:§5G§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4m§ = new §2B§();
         }
         do
         {
            super(param1);
         }
         while(!_loc3_);
         
      }
      
      public static function § !8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §,!$§ = param1;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               this.§4m§.assign(0);
               loop1:
               while(true)
               {
                  this.§4!j§ = -1;
                  addr139:
                  while(true)
                  {
                     this.§0!h§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§&!>§ = 0;
                        while(_loc1_)
                        {
                           this.§%i§ = false;
                           while(_loc1_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(_loc1_ || _loc1_)
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr98);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1 = §#!U§.update(param1,true);
            do
            {
               this.§-!z§(param1);
               do
               {
                  this.§<@§(param1);
               }
               while(_loc3_);
               
            }
            while(_loc3_);
            
         }
      }
      
      private function §-!z§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§0!h§ != 0)
            {
               if(!_loc3_)
               {
                  §#!U§.camera.adjustManualScale(this.§0!h§ > 0,param1 * §?!+§);
               }
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §#!U§.clearLevel();
            while(true)
            {
               removeEventListeners();
               while(_loc2_ || _loc1_)
               {
                  this.§4!j§ = -1;
                  if(!(_loc2_ || this))
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.addEventListeners();
         }
      }
      
      public function §7G§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§#!U§.camera.mCurrentCameraSliderLocation < §%X§.§#!e§)
            {
               if(_loc2_)
               {
                  addr84:
                  return false;
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr59:
                     while(!§#!U§.objects.isWorldAtSleep())
                     {
                        if(!(_loc2_ || this))
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           §§goto(addr74);
                        }
                        continue loop0;
                     }
                     §§push(true);
                     if(_loc1_)
                     {
                        addr74:
                        return false;
                     }
                     if(!(_loc1_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr59);
         }
         §§goto(addr84);
      }
      
      public function §+U§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§%X§ = §#!U§.camera;
         if(_loc3_ || param1)
         {
            §§push(_loc2_.§@!+§);
            loop0:
            while(true)
            {
               §§push(0);
               addr113:
               while(§§pop() > §§pop())
               {
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§@!+§);
                     if(_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§@!+§ = §§pop();
                     continue loop0;
                  }
               }
               §§goto(addr28);
            }
            addr112:
         }
         loop3:
         while(true)
         {
            §§push(_loc2_.§@!+§);
            if(!_loc4_)
            {
               §§push(0);
               if(_loc3_)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc4_)
                     {
                        if(this.§7G§())
                        {
                           continue;
                        }
                        _loc2_.§@!+§ = §%X§.§'!i§ / 2;
                        if(_loc3_)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr28);
                           }
                           else
                           {
                              loop4:
                              while(true)
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    _loc2_.§,M§();
                                 }
                                 else
                                 {
                                    addr107:
                                    while(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr114);
                                    addr107:
                                 }
                              }
                           }
                           §§goto(addr28);
                        }
                        while(!_loc3_)
                        {
                           continue loop3;
                        }
                        §§goto(addr32);
                     }
                     §§goto(addr107);
                  }
                  addr28:
                  return;
               }
               §§goto(addr113);
               §§goto(addr114);
            }
            else
            {
               §§goto(addr112);
            }
         }
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§[!6§(false));
            if(_loc3_ || param1)
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
                        addr462:
                        while(true)
                        {
                           §§push(param2);
                           if(!(_loc4_ && this))
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(!§§pop());
                           }
                           if(_loc4_ && param1)
                           {
                              break;
                           }
                           break;
                        }
                     }
                     addr461:
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
                           §§push(§[!P§);
                           loop4:
                           while(§§pop() != §§pop())
                           {
                              §§push(param1);
                              loop5:
                              while(true)
                              {
                                 §§push(§-!;§);
                                 loop6:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(param1);
                                    while(!_loc4_)
                                    {
                                       §§push(§5B§);
                                       loop8:
                                       while(_loc3_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             addr393:
                                             § !8§(false);
                                             this.§-!H§ = 5000;
                                             §#!U§.particles.moveTrailsNewToOld();
                                             loop24:
                                             while(true)
                                             {
                                                this.§4!j§ = param1;
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      loop25:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     break loop6;
                                                                     addr414:
                                                                  }
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §#!U§.camera.goToCastleView();
                                                                     addr72:
                                                                     loop27:
                                                                     while(!(_loc4_ && param2))
                                                                     {
                                                                        §#!U§.objects.makePigsSmile(5);
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 addr317:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§-!H§ = 1200;
                                                                                    addr320:
                                                                                    loop26:
                                                                                    while(!§#!U§.objects.mMightyEagleAdded)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §#!U§.camera.goToBirdView();
                                                                                             while(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   break loop4;
                                                                                                }
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   break loop26;
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr346:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§3!G§ = §29§;
                                                                                                addr334:
                                                                                                while(true)
                                                                                                {
                                                                                                   §#!U§.camera.goToCastleView();
                                                                                                }
                                                                                             }
                                                                                             addr346:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break loop1;
                                                                                                }
                                                                                                continue loop24;
                                                                                             }
                                                                                             addr369:
                                                                                             while(true)
                                                                                             {
                                                                                                §#!U§.camera.goToCastleView();
                                                                                                addr372:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop24;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop24;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §#!U§.slingshot.makeBirdsJumpForJoy();
                                                                                       while(true)
                                                                                       {
                                                                                          addr171:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§-!Q§);
                                                                                             §§push("LevelCompletedBirdsMilitary");
                                                                                             if(_loc3_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                                             }
                                                                                             §§pop().§#3§(§§pop());
                                                                                             break loop27;
                                                                                          }
                                                                                       }
                                                                                       addr228:
                                                                                    }
                                                                                    addr260:
                                                                                    addr234:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(!§#!U§.objects.mMightyEagleAdded)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr171);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          addr406:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §#!U§.camera.goToBirdView();
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    if(_loc4_ && param2)
                                                                                    {
                                                                                       break loop28;
                                                                                    }
                                                                                    continue loop25;
                                                                                 }
                                                                                 addr159:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc4_ && _loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop30;
                                                                                       }
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr377);
                                                                              }
                                                                           }
                                                                           §§goto(addr228);
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr268);
                                                                           }
                                                                           §§goto(addr372);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§-!H§ = 1200;
                                                                              §§goto(addr260);
                                                                           }
                                                                           addr257:
                                                                        }
                                                                        §§goto(addr72);
                                                                     }
                                                                     addr72:
                                                                  }
                                                                  continue loop24;
                                                               }
                                                               §§goto(addr393);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr72);
                                                }
                                                §§goto(addr56);
                                             }
                                             addr377:
                                             addr382:
                                             addr396:
                                             if(!(_loc3_ || param2))
                                             {
                                                §§goto(addr234);
                                             }
                                             return;
                                             addr23:
                                          }
                                          addr351:
                                          §§push(param1);
                                          while(_loc3_)
                                          {
                                             §§push(§,!3§);
                                             loop10:
                                             while(true)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         §§push(param1);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§0A§);
                                                            addr340:
                                                            addr343:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(param1);
                                                                  continue loop11;
                                                               }
                                                               continue loop10;
                                                            }
                                                            this.§-!H§ = 2000;
                                                            §§goto(addr346);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop8;
                                             }
                                             §§goto(addr369);
                                             continue loop8;
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(§%!%§);
                                       if(_loc4_)
                                       {
                                          §§goto(addr249);
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §-!Q§.§4!$§();
                                                   §§goto(addr159);
                                                }
                                                else
                                                {
                                                   §§goto(addr343);
                                                }
                                             }
                                             §§goto(addr334);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr23);
                                    }
                                    continue loop3;
                                 }
                                 §#!U§.camera.goToBirdView();
                                 §§goto(addr406);
                              }
                           }
                           this.§-!H§ = 2000;
                           §§goto(addr414);
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr461);
         }
         §§goto(addr234);
      }
      
      public function §3!x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§-!H§ = 2000;
            do
            {
               this.§%i§ = false;
               do
               {
                  this.§&!>§ = 2000;
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §8!a§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!>§ = Math.max(this.§&!>§,param1);
         }
      }
      
      protected function § !$§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§#!U§.slingshot.mSlingShotState == §1!g§.§7r§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr41:
                     return !§#!U§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function §<@§(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:§!u§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            §§push(this);
            §§push(this.§"!h§);
            if(!(_loc9_ && _loc3_))
            {
               §§push(§§pop() - param1);
            }
            §§pop().§"!h§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§%i§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§&!>§);
                        if(!_loc9_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§&!>§ = §§pop();
                        if(!(_loc9_ && _loc2_))
                        {
                           §§push(this.§&!>§);
                           while(true)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       this.§"!h§ = 0;
                                       loop6:
                                       while(true)
                                       {
                                          addr1166:
                                          while(true)
                                          {
                                             §§push(this.§"!h§);
                                             loop8:
                                             while(true)
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
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  §§push(this.§[!6§(false));
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     addr1160:
                                                                     while(true)
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop89:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§-!H§);
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop() - param1);
                                                                                 }
                                                                                 §§pop().§-!H§ = §§pop();
                                                                                 loop90:
                                                                                 while(!(_loc9_ && param1))
                                                                                 {
                                                                                    §§push(this.§-!H§);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             addr703:
                                                                                             loop92:
                                                                                             while(!(_loc9_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   this.§-!H§ = 0;
                                                                                                   loop93:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr678:
                                                                                                      addr126:
                                                                                                      loop94:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§4!j§);
                                                                                                         loop95:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§,!3§);
                                                                                                            addr682:
                                                                                                            addr683:
                                                                                                            while(§§pop() != §§pop())
                                                                                                            {
                                                                                                               §§push(this.§4!j§);
                                                                                                               continue loop95;
                                                                                                            }
                                                                                                            addr683:
                                                                                                            §#!U§.updatePigAnimations(param1);
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr688:
                                                                                                               if(_loc9_ && param1)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§push(!§#!U§.camera.isOnCastleView());
                                                                                                               loop129:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        loop130:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && this))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    loop99:
                                                                                                                                    while(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       loop120:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop93;
                                                                                                                                          }
                                                                                                                                          if(!(_loc9_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(§#!U§.camera.mCurrentAction == §%X§.§-!j§);
                                                                                                                                                loop150:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop99;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         loop132:
                                                                                                                                                         while(§§pop())
                                                                                                                                                         {
                                                                                                                                                            loop133:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop5;
                                                                                                                                                               }
                                                                                                                                                               this.changeGameState(§-!;§);
                                                                                                                                                               loop134:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop90;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop132;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     loop135:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§,!s§.§=!I§);
                                                                                                                                                                              loop136:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().slingshot);
                                                                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().§ Y§[0].name == "BIRD_CHRISTMAS");
                                                                                                                                                                                       loop137:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc9_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop84:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§-!R§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                            addr885:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr882:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§ !$§());
                                                                                                                                                                                                         loop85:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop72:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§#!U§.objects.mMightyEagleAdded)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr822:
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§#!U§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                                                                                                        loop152:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              loop153:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                          addr840:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§#!U§.objects.mMightyEagleTimer > 5500);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr839:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop99;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr897:
                                                                                                                                                                                                                                 addr1087:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                continue loop135;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop12;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop13;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1586:
                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                       addr898:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop84;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 loop46:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                    loop47:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(_loc8_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(!§#!U§.objects.isPigsAlive());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          loop21:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             loop22:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§%i§);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                                                                            addr1123:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               addr1124:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                        addr1126:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§&!>§);
                                                                                                                                                                                                                                                                           addr1101:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                              addr1102:
                                                                                                                                                                                                                                                                              while(_loc8_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop4;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1125:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1122:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break loop2;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1139:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop32:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§%i§);
                                                                                                                                                                                                                                                            addr1114:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                                                                               addr1115:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                  addr1116:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                           addr1118:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§&!>§);
                                                                                                                                                                                                                                                                              addr1077:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(6000);
                                                                                                                                                                                                                                                                                 addr1078:
                                                                                                                                                                                                                                                                                 while(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1102);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1117:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop46;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1112:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(!§#!U§.objects.isPigsAlive());
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                            loop34:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop35:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                     addr979:
                                                                                                                                                                                                                                                                     while(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(!§#!U§.objects.mSardineCanAdded);
                                                                                                                                                                                                                                                                        loop37:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                                 loop39:
                                                                                                                                                                                                                                                                                 for(; _loc8_ || param1; while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc8_ || this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop39;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop47;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr552);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr510);
                                                                                                                                                                                                                                                                                 })
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(!§#!U§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                                                                   addr918:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                            addr922:
                                                                                                                                                                                                                                                                                                            while(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop84;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc8_ || this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                     if(!(_loc8_ || _loc3_))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        break loop12;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(§,!s§.§=!I§);
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().slingshot);
                                                                                                                                                                                                                                                                                                                        addr890:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().§ Y§.length == 0);
                                                                                                                                                                                                                                                                                                                           addr894:
                                                                                                                                                                                                                                                                                                                           while(!_loc9_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr897);
                                                                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop15;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop136;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr995:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                        continue loop32;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr995:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr920:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr968:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr1114);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1115);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1117);
                                                                                                                                                                                                                                                                                          addr186:
                                                                                                                                                                                                                                                                                          if(!(_loc8_ || param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr193:
                                                                                                                                                                                                                                                                                          if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc8_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc8_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc8_ || _loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop133;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§#!U§.camera.mCurrentAction == §%X§.§-!j§);
                                                                                                                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop129;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr58:
                                                                                                                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc8_ || param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop150;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop37;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr918);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              loop151:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                    if(_loc9_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       loop110:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop137;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(this.§3!G§);
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop8;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc9_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            break loop110;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§,!s§.§=!I§);
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop().objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc9_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop110;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                 continue loop39;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop39;
                                                                                                                                                                                                                                                                                                                                                                              addr541:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       continue loop89;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr738:
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          this.changeGameState(§-!;§);
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr377:
                                                                                                                                                                                                                                                                                                                                                                                             loop113:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr352:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(!§#!U§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                                                                                                                                                   loop115:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr359:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc8_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop153;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                  addr369:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc8_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop2;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§#!U§.camera.mCurrentAction == §%X§.§-!j§);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop115;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop132;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1122);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        addr331:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr331);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr368:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            loop104:
                                                                                                                                                                                                                                                                                                                                                                                                            while(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        this.changeGameState(§-!;§);
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc8_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              break loop104;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           addr512:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              this.§-!H§ = 2000;
                                                                                                                                                                                                                                                                                                                                                                                                                              addr515:
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop120;
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    this.§"!h§ = 0;
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc8_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc8_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§3!G§);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§pop().§3!G§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      continue loop113;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr806:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop72;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      this.§-!R§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         break loop72;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§-!H§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop8;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr797:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         break loop72;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr579:
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr444:
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                this.§"!h§ = §;!F§;
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1165:
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1153);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1162:
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1118);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1567:
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(this.§-!H§ <= 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1570:
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(§#!U§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   break loop12;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                this.changeGameState(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          break loop2;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop151;
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr599:
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        addr344:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr882);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr369);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr359);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop153;
                                                                                                                                                                                                                                                                                                                                                                                                         addr360:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop21;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr435:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr969:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr1062:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§[!6§(false));
                                                                                                                                                                                                                                                                                                                                                                                          addr742:
                                                                                                                                                                                                                                                                                                                                                                                          while(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                break loop92;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             continue loop89;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr930);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr995);
                                                                                                                                                                                                                                                                                                                                                                                       addr738:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr991:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr969);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr683);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1570);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr377);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop1;
                                                                                                                                                                                                                                                                                                                                                                        addr405:
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop136;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr512);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop136;
                                                                                                                                                                                                                                                                                                                                                               addr510:
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1042:
                                                                                                                                                                                                                                                                                                                                                            while(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                                                                               continue loop0;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1125);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr500:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1101);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1077);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr488:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1570);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop9;
                                                                                                                                                                                                                                                                                                                                       addr552:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop152;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc9_ && this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          addr1154:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1153:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr541);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr368);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(!_loc9_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop85;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                                                                              if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop130;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(_loc8_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr186);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr508);
                                                                                                                                                                                                                                                                                                                                       addr184:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   this.changeGameState(§,!3§);
                                                                                                                                                                                                                                                                                                                                                   if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc8_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop134;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               break loop94;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1225:
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               this.§&!>§ = 6000;
                                                                                                                                                                                                                                                                                                                                                               addr1073:
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  this.§%i§ = true;
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1062);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr1070:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr885);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr344);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             break loop12;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1225);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr82:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(_loc8_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1042);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                this.§&!>§ = 15000;
                                                                                                                                                                                                                                                                                                                                                if(!(_loc8_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                this.§%i§ = true;
                                                                                                                                                                                                                                                                                                                                                §§goto(addr991);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr1251:
                                                                                                                                                                                                                                                                                                                                             §§push(!(_loc4_ = §#!U§.activeObject));
                                                                                                                                                                                                                                                                                                                                             if(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc8_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                                                                         if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1537:
                                                                                                                                                                                                                                                                                                                                                            if(_loc4_.§0M§ < _loc4_.§]!3§)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1544:
                                                                                                                                                                                                                                                                                                                                                               if(_loc4_ && _loc4_ is §3!5§)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1526:
                                                                                                                                                                                                                                                                                                                                                                  _loc5_ = _loc4_ is §7!u§;
                                                                                                                                                                                                                                                                                                                                                                  addr1523:
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1515:
                                                                                                                                                                                                                                                                                                                                                                     _loc6_ = _loc4_ is § !V§;
                                                                                                                                                                                                                                                                                                                                                                     addr1502:
                                                                                                                                                                                                                                                                                                                                                                     _loc7_ = (_loc4_ as §3!5§).§2!K§;
                                                                                                                                                                                                                                                                                                                                                                     addr1516:
                                                                                                                                                                                                                                                                                                                                                                     addr1501:
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1482:
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1491:
                                                                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                           if(!Boolean(§§pop()))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1492:
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 addr1495:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1427:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc8_ || this)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1436:
                                                                                                                                                                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr1450:
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr1455:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc8_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1470:
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1471:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1472:
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc8_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() >= 0);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc8_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1401:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1416:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1343:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1345:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  § !8§(true);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc8_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        this.changeGameState(§0A§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1305:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §#!U§.activeObject = null;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1323:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              this.changeGameState(§0A§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc8_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1303:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1305);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1547:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1472);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1416);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1345);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1323);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1305);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1495);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1345);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1516);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1305);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1471);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1401);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1515);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1492);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1343);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1544);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1491);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1470);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1526);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1427);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1455);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1401);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1537);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1546);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1343);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1544);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1491);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1502);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1482);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1455);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1526);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1471);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1305);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1537);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1544);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1450);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1501);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1436);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1545);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1523);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1544);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1305);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1547);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1303);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1515);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1537);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1491);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1427);
                                                                                                                                                                                                                                                                                                                                             addr1012:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr969);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1010:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                                                                                                                                 addr1039:
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr360);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(_loc8_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                 while(!(_loc9_ && this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1039);
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                    §§goto(addr193);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1123);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1070);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1028);
                                                                                                                                                                                                                                                                                                                                    §§push(this.§%i§);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr969);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1028:
                                                                                                                                                                                                                                                                                                                              addr1069:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1031);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr405);
                                                                                                                                                                                                                                                                                                                        addr161:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1123);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr331);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr184);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr58);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr515);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr444);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr435);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             break loop2;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1031);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr920);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr953:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1139);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1124);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1126);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr953);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1102);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1089:
                                                                                                                                                                                                                                          addr1137:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1069);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr894);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1012);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else if(!§#!U§.objects.mSardineCanAdded)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr755:
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc9_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§-!R§(§%!%§);
                                                                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr738);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr979);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1586);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1112);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1097);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr748:
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr738);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1087);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr873:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr898);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr890);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr889);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1165);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1073);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1154);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1586);
                                                                                                                                                      }
                                                                                                                                                      addr619:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr742);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr968);
                                                                                                                                          }
                                                                                                                                          §§goto(addr811);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr806);
                                                                                                                                       }
                                                                                                                                       else if(§#!U§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§"!h§ = §;!F§;
                                                                                                                                             §§goto(addr797);
                                                                                                                                          }
                                                                                                                                          addr794:
                                                                                                                                       }
                                                                                                                                       §§goto(addr748);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr619);
                                                                                                                              }
                                                                                                                              §§goto(addr1116);
                                                                                                                           }
                                                                                                                           §§goto(addr922);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr873);
                                                                                                                  }
                                                                                                                  §§goto(addr839);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1251);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1586);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr840);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §#!U§.gameOver();
                                                                                                continue loop89;
                                                                                                §§goto(addr703);
                                                                                             }
                                                                                             addr703:
                                                                                          }
                                                                                          §§goto(addr678);
                                                                                          if(!(_loc8_ || _loc2_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(§§pop() <= §§pop())
                                                                                             {
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      this.changeGameState(§-!;§);
                                                                                                      if(!(_loc9_ && _loc2_))
                                                                                                      {
                                                                                                         addr306:
                                                                                                         if(_loc9_ && this)
                                                                                                         {
                                                                                                            §§goto(addr703);
                                                                                                         }
                                                                                                         §§goto(addr126);
                                                                                                      }
                                                                                                      §§goto(addr1251);
                                                                                                   }
                                                                                                   §§goto(addr383);
                                                                                                }
                                                                                                §§goto(addr306);
                                                                                             }
                                                                                             §§goto(addr126);
                                                                                          }
                                                                                          §§goto(addr1078);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1567);
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                           §§goto(addr1162);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            this.§-!H§ = 1000;
                                                            if(!_loc9_)
                                                            {
                                                               break loop2;
                                                            }
                                                            §§goto(addr1586);
                                                         }
                                                         §§goto(addr1160);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1166);
                              }
                              if(_loc9_ && _loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr598);
                              §§push(0);
                           }
                        }
                        break;
                     }
                     §§goto(addr1586);
                  }
                  §§goto(addr1166);
               }
            }
         }
         §§goto(addr226);
      }
      
      protected function §-!R§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(!this.§%i§)
            {
               loop0:
               while(true)
               {
                  this.§%i§ = true;
                  addr153:
                  while(true)
                  {
                  }
                  loop5:
                  while(true)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        continue loop0;
                     }
                     loop6:
                     while(true)
                     {
                        if(§#!U§.slingshot.mDragging)
                        {
                           if(_loc3_ || param2)
                           {
                              if(!_loc4_)
                              {
                                 return;
                              }
                              break loop5;
                           }
                           while(true)
                           {
                           }
                           addr110:
                        }
                        loop8:
                        while(true)
                        {
                           if(§#!U§.objects.isWorldAtSleep())
                           {
                              while(true)
                              {
                                 this.§&!>§ = Math.min(this.§&!>§,3500);
                                 addr92:
                                 while(_loc3_)
                                 {
                                 }
                                 addr49:
                                 continue loop8;
                                 if(_loc4_ && this)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    this.changeGameState(param1,param2);
                                    addr60:
                                    while(true)
                                    {
                                       if(_loc3_ || param2)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr92);
                                       }
                                       §§goto(addr24);
                                    }
                                 }
                              }
                           }
                           loop11:
                           while(true)
                           {
                              §§push(this.§&!>§);
                              if(!(_loc4_ && this))
                              {
                                 §§push(0);
                                 if(_loc3_)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       if(_loc3_ || this)
                                       {
                                          §§goto(addr49);
                                       }
                                       §§goto(addr60);
                                    }
                                    break;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop11;
                                 }
                                 addr129:
                              }
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              return;
                           }
                           addr24:
                           return;
                        }
                     }
                  }
                  §§goto(addr153);
               }
            }
            while(true)
            {
               §§goto(addr129);
               §§goto(addr153);
            }
         }
         §§goto(addr56);
      }
      
      public function §[!6§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§4!j§);
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
                                          while(true)
                                          {
                                             §§push(this.§4!j§);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§%!%§);
                                                addr175:
                                                addr216:
                                                while(_loc2_ || this)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                }
                                                addr117:
                                                while(true)
                                                {
                                                   continue loop8;
                                                   §§goto(addr175);
                                                }
                                                loop26:
                                                while(true)
                                                {
                                                   §§push(this.§4!j§);
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr56:
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr64:
                                                               §§push(!§§pop());
                                                               if(!(_loc2_ || this))
                                                               {
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        addr97:
                                                                        §§pop();
                                                                        if(_loc3_)
                                                                        {
                                                                           while(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§push(this.§-!H§ <= 0);
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop25;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§goto(addr138);
                                                                                 }
                                                                              }
                                                                              §§goto(addr71);
                                                                              §§goto(addr97);
                                                                           }
                                                                           continue loop12;
                                                                           addr163:
                                                                        }
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           continue loop26;
                                                                        }
                                                                        loop19:
                                                                        while(!(_loc3_ && param1))
                                                                        {
                                                                           §§push(param1);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr123:
                                                                              §§push(!§§pop());
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || _loc3_)
                                                                                 {
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr71:
                                                                                                return §§pop();
                                                                                                addr148:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr71:
                                                                                             }
                                                                                             addr71:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_ || _loc2_)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                addr186:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   continue loop19;
                                                                                                }
                                                                                                §§goto(addr56);
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          addr185:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr186);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr71);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr71);
                                                                                       }
                                                                                       continue loop10;
                                                                                       addr138:
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr228:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    break loop19;
                                                                                 }
                                                                              }
                                                                              continue loop0;
                                                                              addr123:
                                                                           }
                                                                           §§goto(addr123);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§4!j§);
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr123);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr184:
                                                                        while(true)
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                        addr184:
                                                                     }
                                                                     §§goto(addr185);
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               §§goto(addr71);
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         §§goto(addr80);
                                                      }
                                                      §§goto(addr64);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr175);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr184);
                                    }
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
         §§goto(addr117);
      }
      
      public function §2d§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§4!j§);
            if(!(_loc1_ && this))
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc2_ || this)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           §§pop();
                           addr77:
                           return this.§4!j§ == §%!%§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1.delta != 0)
            {
               if(!(_loc2_ && this))
               {
                  addr45:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function doUserZoom(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§<B§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr286:
                           while(true)
                           {
                              §§push(!§#!U§.mReadyToRun);
                              addr267:
                              while(!_loc4_)
                              {
                              }
                              continue loop0;
                           }
                        }
                        addr285:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || param2)
                           {
                              break;
                           }
                           while(true)
                           {
                              addr188:
                              if(!(_loc3_ || param2))
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(this.§4!j§);
                                 if(_loc3_ || param1)
                                 {
                                    addr52:
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§5B§);
                                       if(!_loc4_)
                                       {
                                          addr62:
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      loop34:
                                                      while(§§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!§#!U§.isPlayingReplay())
                                                            {
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  §#!U§.camera.adjustManualScale(param1,param2 == 0 ? Number(§%X§.§2O§) : Number(param2));
                                                                  addr100:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §#!U§.changeReplaySpeed(param1);
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            addr113:
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               addr231:
                                                               if(!_loc3_)
                                                               {
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§#!U§.camera.mDragging));
                                                                     loop13:
                                                                     while(_loc3_ || param2)
                                                                     {
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr231);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.§4!j§);
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§0A§);
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr243:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§4!j§);
                                                                                                   addr199:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§,!3§);
                                                                                                      addr200:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         addr201:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc3_ || _loc3_))
                                                                                                            {
                                                                                                               §§goto(addr285);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr286);
                                                                                                      }
                                                                                                      §§goto(addr52);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr242:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§4!j§);
                                                                                                            addr126:
                                                                                                            while(_loc3_)
                                                                                                            {
                                                                                                               §§push(§-!;§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     while(_loc3_)
                                                                                                                     {
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        addr260:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              break loop13;
                                                                                                                           }
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr200);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         addr216:
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                §§goto(addr267);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           break loop34;
                                                                        }
                                                                        §§goto(addr286);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            §§goto(addr184);
                                                         }
                                                         §§goto(addr100);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr211);
                                             }
                                             §§goto(addr144);
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr199);
                                 }
                                 §§goto(addr126);
                              }
                           }
                           addr279:
                        }
                        while(true)
                        {
                           §§goto(addr259);
                           §§goto(addr279);
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr195);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §^!!§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§0!h§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(_loc6_ || param1)
         {
            if(!this.§<B§)
            {
               if(_loc6_ || _loc3_)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(!(_loc5_ && param1))
            {
               dispatchEvent(_loc3_);
               loop0:
               while(true)
               {
                  if(_loc3_.isDefaultPrevented())
                  {
                     if(!_loc5_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        §7n§.§@1§();
                        loop2:
                        while(true)
                        {
                           §§push(this.§[!6§(false));
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    if(_loc6_)
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 addr302:
                                 §#!U§.resetReplaySpeed();
                              }
                              else
                              {
                                 loop4:
                                 while(!§#!U§.isPlayingReplay())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Boolean(§#!U§.activeObject));
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop3;
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc6_ || this))
                                                {
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(§,!$§);
                                                         if(_loc6_)
                                                         {
                                                            addr90:
                                                            if(_loc6_ || this)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               addr100:
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc5_ && _loc3_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           § !8§(false);
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              if(_loc5_ && param2)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §#!U§.activatePowerup();
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break loop12;
                                                                              }
                                                                              addr67:
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              addr187:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§4!j§ == §5B§);
                                                                                 §§goto(addr67);
                                                                              }
                                                                           }
                                                                           break loop12;
                                                                        }
                                                                        return;
                                                                        addr85:
                                                                        addr116:
                                                                     }
                                                                     break loop12;
                                                                  }
                                                                  _loc4_ = §#!U§.screenToBox2D(param1,param2);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(§#!U§.slingshot.canStartDragging(_loc4_))
                                                                     {
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           addr240:
                                                                           §#!U§.slingshot.startDragging();
                                                                           if(!_loc5_)
                                                                           {
                                                                              _loc4_ = §#!U§.screenToBox2D(param1,param2);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §#!U§.slingshot.setNewCoordinatesForRubber(_loc4_.x,_loc4_.y,false);
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    this.changeGameState(§-!;§);
                                                                                    if(!(_loc6_ || param1))
                                                                                    {
                                                                                       break loop4;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §#!U§.camera.startDragging(param1,param2);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop11;
                                                               §§goto(addr90);
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§goto(addr100);
                                                      }
                                                      §§goto(addr304);
                                                   }
                                                }
                                                §§goto(addr107);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §#!U§.camera.startDragging(param1,param2);
                                 if(_loc6_)
                                 {
                                    §§goto(addr302);
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr304:
                  return;
               }
            }
            §§goto(addr116);
         }
         addr37:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(_loc5_)
         {
            §§push(this.§<B§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §7n§.§3F§();
                     if(!(_loc4_ && this))
                     {
                        if(_loc5_)
                        {
                           if(this.§4!j§ == §[!P§)
                           {
                              if(!_loc4_)
                              {
                                 this.changeGameState(§-!;§);
                                 if(!(_loc4_ && this))
                                 {
                                    addr40:
                                    if(false)
                                    {
                                       continue;
                                    }
                                    addr69:
                                    if(§#!U§.slingshot.mDragging)
                                    {
                                       if(!_loc4_)
                                       {
                                          _loc3_ = §#!U§.screenToBox2D(param1,param2);
                                          if(_loc5_)
                                          {
                                             §#!U§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                          }
                                          while(true)
                                          {
                                             if(!§#!U§.slingshot.canShootTheBird())
                                             {
                                                §#!U§.slingshot.cancelDragging();
                                                if(!_loc4_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue;
                                                      }
                                                      if(false)
                                                      {
                                                      }
                                                      if(§#!U§.camera.mDragging)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(!isNaN(param1));
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     addr159:
                                                                     §§pop();
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     addr196:
                                                                     §#!U§.camera.dragToNewPoint(param1,param2);
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        addr182:
                                                                        while(true)
                                                                        {
                                                                           §#!U§.camera.stopDragging();
                                                                           if(!_loc4_)
                                                                           {
                                                                              break loop1;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     return;
                                                                     addr201:
                                                                  }
                                                               }
                                                            }
                                                            addr193:
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr196);
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   else
                                                   {
                                                      addr123:
                                                   }
                                                   this.changeGameState(§5B§);
                                                   break;
                                                }
                                                break;
                                             }
                                             if(!_loc4_)
                                             {
                                                §#!U§.slingshot.shoot();
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr196);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr40);
                           }
                           §§goto(addr69);
                        }
                     }
                     break;
                  }
                  §§goto(addr193);
                  §§push(!isNaN(param2));
                  addr177:
               }
               return;
            }
            §§goto(addr159);
         }
         §§goto(addr177);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_ || _loc3_)
         {
            if(!this.§<B§)
            {
               if(!_loc5_)
               {
                  §§goto(addr31);
               }
            }
            else if(§#!U§.slingshot.mDragging)
            {
               if(_loc4_ || this)
               {
                  _loc3_ = §#!U§.screenToBox2D(param1,param2);
                  if(!(_loc5_ && this))
                  {
                     §#!U§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(_loc4_ || param1)
                     {
                        addr105:
                        this.§`?§ = param1;
                        if(_loc4_)
                        {
                           addr110:
                           this.§@o§ = param2;
                        }
                        return;
                        addr93:
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr93);
               }
               else
               {
                  addr100:
                  §#!U§.camera.dragToNewPoint(param1,param2);
               }
            }
            else if(§#!U§.camera.mDragging)
            {
               if(!_loc5_)
               {
                  §§goto(addr100);
               }
            }
            §§goto(addr105);
         }
         addr31:
      }
      
      public function §3u§() : Point
      {
         return new Point(this.§`?§,this.§@o§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4m§.assign(this.§4m§.getValue() + param1);
            while(true)
            {
               this.§8!a§(§7!f§);
            }
            addr89:
         }
         loop1:
         for(; this.§4!j§ == §0A§; while(_loc3_ || _loc2_)
         {
            this.§3!G§ = §29§;
            if(_loc3_)
            {
               break loop1;
            }
         })
         {
            if(_loc2_ && _loc3_)
            {
               continue;
            }
            if(!_loc2_)
            {
               this.§-!H§ = 2000;
               continue;
            }
            §§goto(addr89);
         }
      }
      
      override public function getScore() : int
      {
         return this.§4m§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!§,!s§.§=!I§.objects.mMightyEagleAdded)
            {
               if(_loc4_ || _loc1_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  §§push(LevelManager.§"!l§(LevelManager.§"L§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr55);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§<B§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<B§ = param1;
         }
      }
   }
}
