package §_-0Dg§
{
   import §_-0BH§.§_-Hy§;
   import §_-4g§.§_-pX§;
   import §_-Ga§.LevelManager;
   import §_-JK§.§_-S2§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-E0§;
   import §_-eS§.§_-BK§;
   import §_-lt§.§_-Fh§;
   import §_-lt§.§_-eZ§;
   import §_-lt§.§_-wE§;
   import §_-qO§.§ in§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-hi§ extends §_-056§
   {
      
      public static const §_-QR§:int = 0;
      
      public static const §_-rw§:int = 1;
      
      public static const §_-M9§:int = 2;
      
      public static const §_-Pu§:int = 3;
      
      public static const §_-02G§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-013§:int = 7;
      
      protected static const §_-Bn§:Number = 0.001;
      
      public static const §_-jh§:Number = 2000;
      
      public static const §_-6a§:Number = 2500;
      
      public static const §_-04W§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-QR§ = 0;
            while(true)
            {
               §_-rw§ = 1;
               addr140:
               while(true)
               {
                  §_-M9§ = 2;
                  addr135:
                  while(true)
                  {
                     §_-Pu§ = 3;
                     addr130:
                     while(true)
                     {
                        §_-02G§ = 4;
                     }
                  }
               }
               addr50:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §_-04W§ = 5;
               addr67:
               if(!_loc1_)
               {
                  if(_loc2_)
                  {
                     addr32:
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                              loop5:
                              while(true)
                              {
                                 LEVEL_STATE_VICTORY2_END = 6;
                                 loop6:
                                 while(true)
                                 {
                                    §_-013§ = 7;
                                    addr98:
                                    while(_loc2_)
                                    {
                                       §§push(§§findproperty(§_-Bn§));
                                       §§push(§_-S2§.§_-vy§);
                                       if(_loc2_ || §_-hi§)
                                       {
                                          §§push(§§pop() / 100);
                                       }
                                       §§pop().§_-Bn§ = §§pop();
                                       while(_loc2_)
                                       {
                                          §_-jh§ = 2000;
                                          loop9:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop6;
                                             }
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             §_-6a§ = 2500;
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop9;
                                                }
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr50);
                                                §§goto(addr67);
                                             }
                                             §§goto(addr130);
                                          }
                                          §§goto(addr140);
                                       }
                                       §§goto(addr135);
                                       §§goto(addr32);
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           addr125:
                        }
                        return;
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr91);
               }
               §§goto(addr46);
            }
         }
         §§goto(addr125);
      }
      
      public var §_-Gx§:int = 0;
      
      protected var §_-NP§:int = 0;
      
      public var §_-ti§:Number;
      
      protected var §_-1t§:Number = 0;
      
      protected var §_-uu§:Boolean = false;
      
      private var §_-2c§:Number = 0;
      
      public var §_-ha§:Number = 0;
      
      protected var §_-Q9§:Boolean;
      
      protected var §_-oU§:Number = 0;
      
      protected var §_-00R§:Number = 0;
      
      protected var §_-u2§:Boolean = true;
      
      protected var §_-4B§:§_-BK§;
      
      public function §_-hi§(param1:§_-00u§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-4B§ = new §_-BK§();
         }
         do
         {
            super(param1);
         }
         while(!(_loc2_ || this));
         
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
               this.§_-4B§.assign(0);
               loop1:
               while(true)
               {
                  this.§_-Gx§ = -1;
                  while(true)
                  {
                     this.§_-NP§ = 0;
                     while(_loc1_ || _loc1_)
                     {
                        while(true)
                        {
                           this.§_-1t§ = 0;
                           continue loop0;
                        }
                        while(_loc1_ || _loc1_)
                        {
                           continue loop1;
                           if(!(_loc2_ && _loc2_))
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            param1 = §_-6A§.update(param1,true);
         }
         while(true)
         {
            this.§_-iW§(param1);
            while(!(_loc2_ && _loc2_))
            {
               this.§_-sg§(param1);
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
         }
      }
      
      private function §_-iW§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§_-NP§ != 0)
            {
               if(!_loc3_)
               {
                  addr34:
                  §_-6A§.camera.adjustManualScale(this.§_-NP§ > 0,param1 * §_-Bn§);
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
         if(!_loc1_)
         {
            §_-6A§.clearLevel();
            while(true)
            {
               removeEventListeners();
               while(!_loc1_)
               {
                  this.§_-Gx§ = -1;
                  if(_loc2_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
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
      
      public function §_-y-§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§_-6A§.camera.mCurrentCameraSliderLocation >= §_-S2§.§_-05T§)
            {
               while(!§_-6A§.objects.isWorldAtSleep())
               {
                  if(_loc2_)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr76:
                        break;
                     }
                     addr84:
                     return false;
                  }
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr68);
                  }
               }
               §§push(true);
               if(_loc2_)
               {
                  addr68:
                  return false;
               }
               if(_loc1_ || this)
               {
                  return §§pop();
               }
               §§goto(addr84);
            }
            §§goto(addr84);
         }
         §§goto(addr76);
      }
      
      public function §_-n0§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-S2§ = §_-6A§.camera;
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_.§_-06C§);
            loop0:
            while(true)
            {
               §§push(0);
               addr134:
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
                     §§push(_loc2_.§_-06C§);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§_-06C§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §_-FU§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§_-kE§(false));
            if(!(_loc4_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  addr444:
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
                           if(_loc4_)
                           {
                              while(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(param1);
                                    while(true)
                                    {
                                       §§push(§_-QR§);
                                       loop4:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(param1);
                                          loop5:
                                          while(true)
                                          {
                                             §§push(§_-rw§);
                                             loop6:
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(param1);
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§_-M9§);
                                                   loop8:
                                                   while(§§pop() != §§pop())
                                                   {
                                                      §§push(param1);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§_-Pu§);
                                                         loop10:
                                                         while(§§pop() != §§pop())
                                                         {
                                                            §§push(param1);
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(§_-02G§);
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§push(param1);
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(LEVEL_STATE_VICTORY2_END);
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(param1);
                                                                                 loop15:
                                                                                 for(; !_loc4_; §§push(param1),if(!(_loc4_ && param1))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop13;
                                                                                 })
                                                                                 {
                                                                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_ || param2)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       §§push(§_-013§);
                                                                                       addr145:
                                                                                       continue loop14;
                                                                                       if(_loc4_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc3_ || param1))
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          loop30:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(!(_loc4_ && param2))
                                                                                                {
                                                                                                   if(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      addr177:
                                                                                                      §_-pX§.§_-j4§();
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            §_-pX§.playSound("LevelFailedPigs1");
                                                                                                            loop28:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_ || param2)
                                                                                                                  {
                                                                                                                     this.§_-ha§ = 1200;
                                                                                                                     loop29:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 addr369:
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §_-6A§.camera.goToCastleView();
                                                                                                                                    loop24:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §_-6A§.objects.makePigsSmile(5);
                                                                                                                                                while(_loc4_)
                                                                                                                                                {
                                                                                                                                                   continue loop24;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§_-Gx§ = param1;
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc4_ && param1)
                                                                                                                                                         {
                                                                                                                                                            break loop16;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            break loop12;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               this.§_-2c§ = §_-04W§;
                                                                                                                                                               break loop30;
                                                                                                                                                            }
                                                                                                                                                            continue loop1;
                                                                                                                                                         }
                                                                                                                                                         continue;
                                                                                                                                                         addr396:
                                                                                                                                                      }
                                                                                                                                                      addr224:
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         break loop8;
                                                                                                                                                      }
                                                                                                                                                      §_-6A§.camera.goToBirdView();
                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                      {
                                                                                                                                                         §_-6A§.slingshot.makeBirdsJumpForJoy();
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr396);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr58);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr58:
                                                                                                                                                return;
                                                                                                                                                addr23:
                                                                                                                                             }
                                                                                                                                             break loop28;
                                                                                                                                          }
                                                                                                                                          continue loop25;
                                                                                                                                       }
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr23);
                                                                                                                                 }
                                                                                                                                 addr369:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     §§goto(addr23);
                                                                                                                     addr213:
                                                                                                                  }
                                                                                                                  §_-6A§.particles.moveTrailsNewToOld();
                                                                                                                  §§goto(addr369);
                                                                                                                  addr374:
                                                                                                               }
                                                                                                               addr266:
                                                                                                               if(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  if(!§_-6A§.objects.mMightyEagleAdded)
                                                                                                                  {
                                                                                                                     §§goto(addr224);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               break loop10;
                                                                                                            }
                                                                                                            §§push(§_-pX§);
                                                                                                            §§push("LevelCompletedBirdsMilitary");
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                                                            }
                                                                                                            §§pop().playSound(§§pop());
                                                                                                            §§goto(addr213);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc3_ || _loc3_))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§_-6A§.objects.mMightyEagleAdded)
                                                                                                                     {
                                                                                                                        if(_loc3_ || param1)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §_-6A§.camera.goToBirdView();
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              break loop26;
                                                                                                                           }
                                                                                                                           break loop14;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr318:
                                                                                                                     this.§_-ha§ = 1200;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§goto(addr23);
                                                                                                            }
                                                                                                            this.§_-ha§ = 5000;
                                                                                                            §§goto(addr374);
                                                                                                            addr386:
                                                                                                         }
                                                                                                         §§goto(addr23);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr23);
                                                                                                   addr404:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr229);
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §_-6A§.camera.goToCastleView();
                                                                                             §§goto(addr23);
                                                                                             addr326:
                                                                                          }
                                                                                          break loop6;
                                                                                       }
                                                                                       §§goto(addr23);
                                                                                    }
                                                                                    if(_loc3_ || param2)
                                                                                    {
                                                                                       this.§_-ha§ = 1200;
                                                                                       §§goto(addr266);
                                                                                    }
                                                                                    §§goto(addr326);
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           if(!(_loc4_ && param2))
                                                                           {
                                                                              §§goto(addr318);
                                                                           }
                                                                           addr362:
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr23);
                                                                           }
                                                                           break loop1;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§_-ha§ = 2000;
                                                                  §§goto(addr345);
                                                               }
                                                            }
                                                         }
                                                         §_-6A§.camera.goToCastleView();
                                                         §§goto(addr362);
                                                      }
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      this.§_-Q9§ = false;
                                                      §§goto(addr386);
                                                   }
                                                   break loop4;
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                             §_-6A§.camera.goToBirdView();
                                             §§goto(addr396);
                                          }
                                       }
                                       this.§_-ha§ = 2000;
                                       §§goto(addr404);
                                    }
                                 }
                              }
                              break;
                           }
                           addr428:
                           continue loop0;
                        }
                        return;
                     }
                     addr446:
                  }
                  while(true)
                  {
                     §§goto(addr428);
                  }
               }
               §§goto(addr446);
            }
            §§goto(addr444);
         }
         §§goto(addr369);
      }
      
      public function §_-5S§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-1t§ = Math.max(this.§_-1t§,param1);
         }
      }
      
      protected function §_-8A§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§_-6A§.slingshot.mSlingShotState == §_-E0§.§_-yK§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr46:
                     §§pop();
                     return !§_-6A§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public function §_-sg§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:§_-eZ§ = null;
         if(_loc5_)
         {
            §§push(this);
            §§push(this.§_-ti§);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() - param1);
            }
            §§pop().§_-ti§ = §§pop();
            while(true)
            {
               §§push(this.§_-uu§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§_-1t§);
                        if(_loc5_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§_-1t§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§_-1t§);
                           while(true)
                           {
                              §§push(0);
                              addr1135:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§_-ti§ = 0;
                                       addr1139:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr1136:
                                 }
                              }
                              addr1043:
                              if(!(_loc5_ || this))
                              {
                                 continue;
                              }
                              §§push(0);
                              loop95:
                              while(true)
                              {
                                 §§push(§§pop() > §§pop());
                                 loop24:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(!§_-6A§.objects.isPigsAlive());
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop29:
                                                                  while(_loc5_ || this)
                                                                  {
                                                                     §§push(!§_-6A§.objects.mSardineCanAdded);
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop32:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr930:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§_-6A§.objects.mMightyEagleAdded);
                                                                                       }
                                                                                    }
                                                                                    addr929:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§push(this.§_-8A§());
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§_-6A§.objects.mMightyEagleAdded)
                                                                                                   {
                                                                                                      if(!§_-6A§.objects.mSardineCanAdded)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§_-Ae§(§_-013§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr817:
                                                                                                               loop58:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§_-kE§(false));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        loop60:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §_-6A§.gameOver();
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 loop96:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§_-ha§);
                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - param1);
                                                                                                                                    }
                                                                                                                                    §§pop().§_-ha§ = §§pop();
                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-ha§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§_-ha§ = 0;
                                                                                                                                                      if(!(_loc6_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            while(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§_-6A§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                                            }
                                                                                                                                                            continue loop3;
                                                                                                                                                            addr877:
                                                                                                                                                         }
                                                                                                                                                         loop99:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-Gx§);
                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(§_-Pu§);
                                                                                                                                                               loop100:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§_-Gx§);
                                                                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§_-02G§);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop106:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§_-ha§);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(!(_loc6_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc6_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop95;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Boolean(§_-6A§.objects.hasBirds()));
                                                                                                                                                                                                   loop114:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc5_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        while(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 loop113:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§_-ha§ = 2000;
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop106;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this.§_-ti§ = 0;
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop100;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                                                                        §§push(this.§_-2c§);
                                                                                                                                                                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().§_-2c§ = §§pop();
                                                                                                                                                                                                                                                                        while(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr486:
                                                                                                                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              loop116:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr344:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(!§_-6A§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop114;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop113;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc6_ && _loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§_-6A§.camera.mCurrentAction == §_-S2§.§_-07O§);
                                                                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1136);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr931:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop58;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1003:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr606:
                                                                                                                                                                                                                                                                                                                     break loop60;
                                                                                                                                                                                                                                                                                                                     addr680:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1193:
                                                                                                                                                                                                                                                                                                                  §§push(!(_loc4_ = §_-6A§.activeObject));
                                                                                                                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc5_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1354:
                                                                                                                                                                                                                                                                                                                                 if(_loc4_.§_-Kh§ < _loc4_.§_-8l§)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1358:
                                                                                                                                                                                                                                                                                                                                    §§push(Boolean(_loc4_));
                                                                                                                                                                                                                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1369:
                                                                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1370:
                                                                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                                                                          addr1371:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc4_ is §_-wE§);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1349:
                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1350:
                                                                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                                                                      addr1351:
                                                                                                                                                                                                                                                                                                                                                      §§push((_loc4_ as §_-Fh§).§_-rV§);
                                                                                                                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1326:
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1328:
                                                                                                                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                                                                                                                        addr1329:
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() >= 0);
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr1280:
                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1282:
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc5_ || this)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       this.§_-Q9§ = true;
                                                                                                                                                                                                                                                                                                                                                                                       addr1292:
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          this.§_-FU§(§_-02G§);
                                                                                                                                                                                                                                                                                                                                                                                          addr1247:
                                                                                                                                                                                                                                                                                                                                                                                          §_-6A§.activeObject = null;
                                                                                                                                                                                                                                                                                                                                                                                          addr1258:
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             this.§_-FU§(§_-02G§);
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1247);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr1372:
                                                                                                                                                                                                                                                                                                                                                                                                            break loop60;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1371);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1351);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1282);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1258);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1247);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1292);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1358);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1329);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1247);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1351);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1326);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1354);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1350);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1280);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1369);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1349);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1326);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1354);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1280);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1370);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1350);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1349);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1370);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1372);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1329);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1328);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1354);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1349);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1354);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                               addr1130:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(this.§_-kE§(false));
                                                                                                                                                                                                                                                                                                                  addr1115:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                     addr1116:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1117:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop96;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              this.§_-ti§ = §_-jh§;
                                                                                                                                                                                                                                                                                                                              addr1121:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Boolean(§_-6A§.objects.isWorldAtSleep()));
                                                                                                                                                                                                                                                                                                                                 break loop30;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(§§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     this.§_-FU§(§_-rw§);
                                                                                                                                                                                                                                                                                                                     §§goto(addr680);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr861:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        this.§_-Ae§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                                                                        addr864:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr829:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop58;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr861:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr606);
                                                                                                                                                                                                                                                                                                            addr674:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr606);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr929);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr327);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr996);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1066);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1030);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop116;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop28;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr407:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr847);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr765:
                                                                                                                                                                                                                                                                        if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop60;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr686);
                                                                                                                                                                                                                                                                        §§push(!§_-6A§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                        addr479:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1118);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr886);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr740);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1405);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr439);
                                                                                                                                                                                                                                                      §§push(§ in§.§_-Dc§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr407);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr883:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr884);
                                                                                                                                                                                                                                                   §§goto(addr443);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr581);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1073);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr703);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1127);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1010);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop64:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr983);
                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1102:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 break loop64;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1102:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1071);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr562:
                                                                                                                                                                                                                        addr1103:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1032);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr997);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr562);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1411);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1102);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop1;
                                                                                                                                                                                                         addr1078:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1075);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr918);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr640:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §_-6A§.updatePigAnimations(param1);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc5_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop106;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr344);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1103);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr864);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr413:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr479);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1387);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1386);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop2;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(this.§_-Gx§);
                                                                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§_-QR§);
                                                                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              addr1185:
                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§_-Gx§);
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc5_ || this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1384);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                           §§goto(addr1193);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr1375:
                                                                                                                                                                     if(§§pop() == LEVEL_STATE_VICTORY1_SLINGSHOT)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1384);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1405);
                                                                                                                                                                     }
                                                                                                                                                                     break loop60;
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  if(_loc6_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop() != §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§_-Gx§);
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§_-rw§);
                                                                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr147);
                                                                                                                                                                                       §§push(Boolean(§_-6A§.camera.isOnCastleView()));
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr413);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr284);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1384);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§_-Gx§);
                                                                                                                                                                              if(!(_loc6_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 break loop99;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1375);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1375);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr220);
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §_-6A§.updatePigAnimations(param1);
                                                                                                                                                                  §§goto(addr765);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr988);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(§_-M9§);
                                                                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1185);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1375);
                                                                                                                                                         §§goto(addr883);
                                                                                                                                                      }
                                                                                                                                                      break loop60;
                                                                                                                                                      if(!(_loc5_ || this))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      this.§_-FU§(§_-Pu§);
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr177);
                                                                                                                                                         }
                                                                                                                                                         if(_loc5_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc6_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr106);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1167);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr930);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr675);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr640);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr861);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1193);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr743);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1387);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                          addr518:
                                                                                                                                          if(!(_loc5_ || this))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr525);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr1019);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 addr795:
                                                                                                                              }
                                                                                                                              §§goto(addr1011);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     §§goto(addr795);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr817);
                                                                                                   }
                                                                                                   §§goto(addr877);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr817);
                                                                                             if(!(_loc5_ || param1))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr320);
                                                                                             §§push(!§§pop());
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr908);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr926:
                                                                        }
                                                                        break;
                                                                        if(!(_loc5_ || param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr61);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        break loop29;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr1078);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr926);
                                                         }
                                                         §§goto(addr1065);
                                                      }
                                                      §§goto(addr1031);
                                                      if(!(_loc5_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      addr717:
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr725);
                                                         }
                                                         §§goto(addr673);
                                                      }
                                                      while(_loc5_ || param1)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop24;
                                                         }
                                                         §§goto(addr1102);
                                                         §§goto(addr717);
                                                      }
                                                      §§goto(addr1128);
                                                   }
                                                }
                                                §§goto(addr1056);
                                             }
                                             §§goto(addr995);
                                             if(_loc6_ && param1)
                                             {
                                                continue;
                                             }
                                             §§pop();
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§push(this.§_-2c§);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§goto(addr518);
                                                   }
                                                   §§goto(addr1386);
                                                }
                                                §§goto(addr1067);
                                             }
                                             §§goto(addr1384);
                                          }
                                       }
                                       §§goto(addr1054);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr1122);
               }
            }
         }
         §§goto(addr184);
      }
      
      protected function §_-Ae§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§_-uu§)
            {
               addr130:
               while(true)
               {
                  this.§_-uu§ = true;
                  addr133:
                  while(true)
                  {
                  }
               }
               addr130:
            }
            loop0:
            while(true)
            {
               §§push(new Date().time - §_-6A§.slingshot.timeOfLastBirdShot);
               loop1:
               while(true)
               {
                  §§push(6000);
                  loop2:
                  while(§§pop() >= §§pop())
                  {
                     loop3:
                     while(true)
                     {
                        if(!§_-6A§.slingshot.mDragging)
                        {
                           while(true)
                           {
                              if(§_-6A§.objects.isWorldAtSleep())
                              {
                                 loop5:
                                 while(_loc3_ || _loc3_)
                                 {
                                    this.§_-1t§ = Math.min(this.§_-1t§,3500);
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break loop3;
                                          }
                                          continue loop3;
                                       }
                                       addr39:
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                this.§_-FU§(param1,param2);
                                                addr19:
                                                return;
                                                addr64:
                                             }
                                             else
                                             {
                                                addr92:
                                             }
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && param1))
                                                {
                                                   return;
                                                }
                                                break;
                                             }
                                             break loop2;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(this.§_-1t§);
                                 if(!_loc4_)
                                 {
                                    §§push(0);
                                    if(!(_loc4_ && param1))
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr39);
                                          }
                                          §§goto(addr64);
                                       }
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr19);
                           }
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr130);
                  }
                  return;
               }
            }
         }
         §§goto(addr130);
      }
      
      public function §_-kE§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§_-Gx§);
            loop0:
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               addr216:
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
                           while(true)
                           {
                              §§pop();
                              addr220:
                              while(true)
                              {
                                 §§push(this.§_-Gx§);
                                 addr173:
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    addr174:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr25:
                                    if(_loc3_ || param1)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           addr219:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              loop10:
                              while(_loc3_ || param1)
                              {
                                 if(!§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             break;
                                          }
                                          §§pop();
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(this.§_-Gx§);
                                                while(true)
                                                {
                                                   §§push(§_-013§);
                                                   addr157:
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      addr158:
                                                      while(true)
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop17:
                                                            while(_loc3_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           continue loop18;
                                                                           addr75:
                                                                           if(_loc2_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(!(_loc2_ && param1))
                                                                           {
                                                                              if(!(_loc2_ && param1))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr108:
                                                                                    loop25:
                                                                                    while(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§pop();
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                       addr152:
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§_-ha§ <= 0);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§goto(addr75);
                                                                                             }
                                                                                             while(_loc3_)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop24;
                                                                                             }
                                                                                             continue loop9;
                                                                                             addr149:
                                                                                          }
                                                                                          continue loop25;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr148:
                                                                                       while(!§§pop())
                                                                                       {
                                                                                          §§goto(addr149);
                                                                                       }
                                                                                       §§goto(addr108);
                                                                                    }
                                                                                    addr108:
                                                                                    addr147:
                                                                                 }
                                                                                 addr63:
                                                                                 return §§pop();
                                                                                 addr62:
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           §§goto(addr148);
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr62);
                                                               }
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                   addr134:
                                                   §§push(this.§_-Gx§);
                                                   if(_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr25);
                                                }
                                             }
                                          }
                                          §§goto(addr173);
                                       }
                                       else
                                       {
                                          §§goto(addr219);
                                       }
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr158);
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr152);
      }
      
      public function §_-oH§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-Gx§);
            if(_loc1_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           addr51:
                           return this.§_-Gx§ == §_-013§;
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
         if(_loc2_ || this)
         {
            if(param1.delta != 0)
            {
               if(_loc2_ || param1)
               {
                  addr44:
                  this.doUserZoom(param1.delta > 0);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function doUserZoom(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§_-u2§);
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
                           addr261:
                           while(true)
                           {
                              §§push(!§_-6A§.mReadyToRun);
                              addr244:
                              while(!(_loc2_ && _loc3_))
                              {
                              }
                              continue loop3;
                           }
                        }
                     }
                     loop4:
                     while(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§push(Boolean(§_-6A§.slingshot.mDragging));
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(!(_loc2_ && _loc2_))
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
                                          §§push(Boolean(§_-6A§.camera.mDragging));
                                          if(!_loc2_)
                                          {
                                             loop19:
                                             while(!§§pop())
                                             {
                                                §§push(this.§_-Gx§);
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(§_-02G§);
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop());
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr198:
                                                               loop10:
                                                               while(!(_loc2_ && this))
                                                               {
                                                                  §§pop();
                                                                  loop11:
                                                                  for(; _loc3_ || _loc3_; if(_loc2_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  },if(_loc2_)
                                                                  {
                                                                     continue loop9;
                                                                  },if(_loc2_)
                                                                  {
                                                                     break loop4;
                                                                  },§§goto(addr20))
                                                                  {
                                                                     §§push(this.§_-Gx§);
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(§_-Pu§);
                                                                        addr154:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           addr155:
                                                                           do
                                                                           {
                                                                              if(!(_loc3_ || _loc2_))
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                           while(!_loc2_);
                                                                           
                                                                           continue loop0;
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§_-Gx§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(_loc2_ && this)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           §§push(§_-rw§);
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!(_loc3_ || _loc2_))
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              addr60:
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       if(_loc2_ && _loc3_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr244);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr155);
                                                                                 }
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       if(!(_loc3_ || _loc2_))
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(§_-6A§.isPlayingReplay())
                                                                                       {
                                                                                          §_-6A§.changeReplaySpeed(param1);
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(_loc2_ && this)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                    }
                                                                                    if(_loc2_ && param1)
                                                                                    {
                                                                                       break loop19;
                                                                                    }
                                                                                    §_-6A§.camera.adjustManualScale(param1);
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr20:
                                                                                 return;
                                                                                 addr91:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop17;
                                                                                 §§goto(addr60);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr154);
                                                                           }
                                                                           §§goto(addr155);
                                                                        }
                                                                        continue loop21;
                                                                     }
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               continue loop6;
                                                               addr198:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc2_)
                                                               {
                                                                  continue loop22;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr171);
                                                               }
                                                               §§goto(addr91);
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                }
                                             }
                                             if(!(_loc3_ || param1))
                                             {
                                                continue loop5;
                                             }
                                             §§goto(addr20);
                                             addr180:
                                          }
                                          §§goto(addr198);
                                       }
                                    }
                                 }
                                 §§goto(addr180);
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
         §§goto(addr261);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §_-Ik§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-NP§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Point = null;
         if(!(_loc5_ && param1))
         {
            if(!this.§_-u2§)
            {
               if(!(_loc5_ && param2))
               {
                  return;
               }
            }
         }
         var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
         if(_loc6_)
         {
            dispatchEvent(_loc3_);
            loop14:
            while(true)
            {
               if(!_loc3_.isDefaultPrevented())
               {
                  loop13:
                  while(true)
                  {
                     §_-Hy§.§_-7h§();
                     if(!(_loc5_ && this))
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(_loc6_)
                        {
                           §§push(this.§_-kE§(false));
                           loop6:
                           while(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 if(!§_-6A§.isPlayingReplay())
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(Boolean(§_-6A§.activeObject));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          while(!§§pop())
                                          {
                                             while(true)
                                             {
                                                addr156:
                                                addr297:
                                                §§goto(addr299);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop6;
                                             }
                                             §§pop();
                                             if(_loc6_ || param1)
                                             {
                                             }
                                             §§goto(addr299);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§_-Gx§ == §_-M9§);
                                       if(_loc6_ || param1)
                                       {
                                          §§goto(addr155);
                                          §§push(Boolean(§§pop()));
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                                 else
                                 {
                                    §_-6A§.camera.startDragging(param1,param2);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr297);
                                    }
                                 }
                                 addr299:
                                 loop10:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc6_)
                                    {
                                       continue loop9;
                                    }
                                    if(!§§pop())
                                    {
                                       while(!(_loc6_ || _loc3_))
                                       {
                                          continue loop8;
                                       }
                                       addr167:
                                       §§pop();
                                       loop1:
                                       while(true)
                                       {
                                          §§push(this.§_-Q9§);
                                          if(!(_loc5_ && this))
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!(_loc6_ || param2))
                                                {
                                                   continue loop10;
                                                }
                                                if(!_loc6_)
                                                {
                                                   break loop9;
                                                }
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr160);
                                             }
                                          }
                                          while(§§pop())
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                this.§_-Q9§ = false;
                                                if(_loc5_ && _loc3_)
                                                {
                                                }
                                                break loop10;
                                             }
                                             if(_loc5_ && _loc3_)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop13;
                                             }
                                             addr130:
                                             while(true)
                                             {
                                                §_-6A§.activatePowerup();
                                                if(!_loc6_)
                                                {
                                                   break loop10;
                                                }
                                                if(_loc6_ || this)
                                                {
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      return;
                                                   }
                                                   break loop6;
                                                }
                                                continue loop1;
                                                §§goto(addr130);
                                             }
                                          }
                                          addr231:
                                          _loc4_ = §_-6A§.screenToBox2D(param1,param2);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(§_-6A§.slingshot.canStartDragging(_loc4_))
                                             {
                                                if(_loc6_)
                                                {
                                                   addr286:
                                                   §_-6A§.slingshot.startDragging();
                                                }
                                                this.§_-FU§(§_-rw§);
                                             }
                                             else
                                             {
                                                §_-6A§.camera.startDragging(param1,param2);
                                             }
                                             return;
                                          }
                                          §§goto(addr286);
                                       }
                                       addr160:
                                    }
                                    §§goto(addr104);
                                 }
                                 §_-6A§.resetReplaySpeed();
                                 addr299:
                                 return;
                              }
                           }
                           return;
                        }
                        continue loop14;
                     }
                     §§goto(addr297);
                  }
               }
               return;
            }
         }
         else if(false)
         {
            §§goto(addr62);
         }
         §§goto(addr231);
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!(_loc4_ && this))
         {
            §§push(this.§_-u2§);
            if(_loc5_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     return;
                  }
                  addr216:
                  loop8:
                  while(true)
                  {
                     §_-6A§.camera.dragToNewPoint(param1,param2);
                     addr221:
                     addr210:
                     loop2:
                     while(true)
                     {
                        addr197:
                        while(true)
                        {
                           §_-6A§.camera.stopDragging();
                           if(!_loc4_)
                           {
                              if(!(_loc4_ && param2))
                              {
                                 break loop2;
                              }
                              continue loop8;
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr216:
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     §_-Hy§.§_-6Z§();
                     loop1:
                     while(this.§_-Gx§ == §_-QR§)
                     {
                        if(_loc5_)
                        {
                           this.§_-FU§(§_-rw§);
                           if(!(_loc4_ && param1))
                           {
                              if(!(_loc5_ || param1))
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 if(true)
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           addr164:
                           §§push(!isNaN(param1));
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                 }
                                 addr215:
                                 if(§§pop())
                                 {
                                    §§goto(addr216);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr215);
                           }
                           §§pop();
                           if(!(_loc4_ && this))
                           {
                              §§goto(addr215);
                              §§push(!isNaN(param2));
                              addr192:
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr221);
                     }
                     if(§_-6A§.slingshot.mDragging)
                     {
                        if(!(_loc4_ && param2))
                        {
                           _loc3_ = §_-6A§.screenToBox2D(param1,param2);
                           if(_loc5_)
                           {
                              §_-6A§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                           }
                           while(!§_-6A§.slingshot.canShootTheBird())
                           {
                              §_-6A§.slingshot.cancelDragging();
                              if(!(_loc4_ && param1))
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          this.§_-FU§(§_-M9§);
                                          addr137:
                                          §§goto(addr158);
                                       }
                                       addr133:
                                    }
                                    §§goto(addr158);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr133);
                                 }
                                 addr148:
                              }
                              §§goto(addr137);
                           }
                           while(true)
                           {
                              §_-6A§.slingshot.shoot();
                              §§goto(addr148);
                           }
                        }
                        §§goto(addr210);
                     }
                     addr158:
                     §§goto(addr194);
                  }
               }
               addr194:
               while(!_loc5_)
               {
                  break loop3;
               }
               addr158:
               if(§_-6A§.camera.mDragging)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr164);
                  }
                  §§goto(addr192);
               }
               return;
            }
            §§goto(addr215);
         }
         §§goto(addr52);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!_loc5_)
         {
            if(!this.§_-u2§)
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
            else if(§_-6A§.slingshot.mDragging)
            {
               if(_loc4_)
               {
                  addr50:
                  _loc3_ = §_-6A§.screenToBox2D(param1,param2);
                  if(_loc4_ || _loc3_)
                  {
                     §_-6A§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!_loc5_)
                     {
                        addr95:
                        this.§_-oU§ = param1;
                        if(!(_loc5_ && this))
                        {
                           this.§_-00R§ = param2;
                        }
                     }
                  }
                  return;
               }
            }
            else if(§_-6A§.camera.mDragging)
            {
               if(!_loc5_)
               {
                  §_-6A§.camera.dragToNewPoint(param1,param2);
               }
            }
            §§goto(addr95);
         }
         addr26:
      }
      
      public function §_-uU§() : Point
      {
         return new Point(this.§_-oU§,this.§_-00R§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-4B§.assign(this.§_-4B§.getValue() + param1);
            loop0:
            while(true)
            {
               this.§_-5S§(§_-6a§);
               loop1:
               for(; this.§_-Gx§ == §_-02G§; loop3:
               while(!(_loc3_ && this))
               {
                  continue loop0;
                  while(true)
                  {
                     this.§_-2c§ = §_-04W§;
                     if(!(_loc2_ || this))
                     {
                        continue loop3;
                     }
                     §§goto(addr34);
                  }
               })
               {
                  while(true)
                  {
                     this.§_-ha§ = 2000;
                     continue loop1;
                     addr34:
                     if(_loc2_ || _loc2_)
                     {
                        break loop1;
                     }
                  }
               }
               return;
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr84);
            }
         }
         §§goto(addr84);
      }
      
      override public function getScore() : int
      {
         return this.§_-4B§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!§ in§.§_-Dc§.objects.mMightyEagleAdded)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  §§push(LevelManager.§_-U0§(LevelManager.§_-HM§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr54);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§_-u2§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-u2§ = param1;
         }
      }
   }
}
