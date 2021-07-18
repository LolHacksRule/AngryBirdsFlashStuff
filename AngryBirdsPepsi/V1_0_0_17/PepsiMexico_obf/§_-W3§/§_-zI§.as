package §_-W3§
{
   import §_-CR§.§_-Dz§;
   import §_-CR§.§_-he§;
   import §_-CR§.§_-zf§;
   import §_-IV§.§_-dW§;
   import §_-OJ§.§_-7G§;
   import §_-OJ§.§_-LW§;
   import §_-OJ§.§_-tL§;
   import §_-e3§.§_-9Y§;
   import §_-rQ§.§_-Ou§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §_-zI§ extends §_-c4§
   {
      
      public static const §_-8O§:int = 0;
      
      public static const §_-oG§:int = 1;
      
      public static const §_-Nx§:int = 2;
      
      public static const §_-oi§:int = 3;
      
      public static const §_-x-§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §_-zt§:int = 7;
      
      public static const §_-Og§:Number = 2000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §_-8O§ = 0;
            if(_loc2_)
            {
               §_-oG§ = 1;
               if(_loc2_ || §_-zI§)
               {
                  §_-Nx§ = 2;
                  if(_loc2_)
                  {
                     §_-oi§ = 3;
                  }
                  §_-x-§ = 4;
                  if(!_loc1_)
                  {
                     addr56:
                     LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                     LEVEL_STATE_VICTORY2_END = 6;
                  }
                  §_-zt§ = 7;
                  §_-Og§ = 2000;
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public var §_-L-§:int = 0;
      
      public var §_-24§:Number;
      
      public var §_-EX§:Number = 0;
      
      private var §_-O0§:Boolean;
      
      private var §_-3y§:Number = 0;
      
      private var §_-X0§:Number = 0;
      
      protected var §_-06§:Boolean = true;
      
      protected var §_-U2§:§_-dW§;
      
      public function §_-zI§(param1:§_-tL§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-U2§ = new §_-dW§();
            if(!_loc3_)
            {
               super(param1);
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            this.§_-U2§.§_-bB§(0);
            if(_loc2_)
            {
               this.§_-L-§ = -1;
               this.§_-bh§(§_-8O§);
               if(_loc2_)
               {
                  this.§_-24§ = §_-Og§;
                  if(!(_loc1_ && _loc1_))
                  {
                     §_-WT§(true);
                     §_-Ag§.objects.setDamageEnabled(true);
                     addr68:
                     §_-Ag§.objects.setGroundTextureEnabled(true);
                  }
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            param1 = §_-Ag§.update(param1,true);
            if(!(_loc2_ && _loc2_))
            {
               this.§_-53§(param1);
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-Ag§.clearLevel();
            if(_loc2_ || this)
            {
               removeEventListeners();
               if(!_loc2_)
               {
               }
               §§goto(addr46);
            }
            this.§_-L-§ = -1;
         }
         addr46:
      }
      
      override public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.addEventListeners();
         }
      }
      
      public function §_-Fe§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§_-Ag§.camera.mCurrentCameraSliderLocation < §_-LW§.§_-K§)
            {
               if(!_loc1_)
               {
                  addr31:
                  §§push(false);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr43:
                  §§push(false);
                  if(_loc1_ && _loc2_)
                  {
                     §§goto(addr60);
                  }
               }
               return §§pop();
            }
            if(!§_-Ag§.objects.isWorldAtSleep())
            {
               if(_loc2_)
               {
                  §§goto(addr43);
               }
               §§goto(addr60);
            }
            §§push(true);
            addr60:
            return §§pop();
         }
         §§goto(addr31);
      }
      
      public function §_-2§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-LW§ = §_-Ag§.camera;
         §§push(_loc2_.§_-Er§);
         if(_loc3_ || _loc3_)
         {
            §§push(0);
            if(!(_loc4_ && this))
            {
               if(§§pop() > §§pop())
               {
                  if(!_loc4_)
                  {
                     addr60:
                     §§push(_loc2_);
                     §§push(_loc2_.§_-Er§);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§_-Er§ = §§pop();
                     if(_loc2_.§_-Er§ <= 0)
                     {
                        if(this.§_-Fe§())
                        {
                           _loc2_.§_-Er§ = -1;
                           if(!_loc4_)
                           {
                              if(!§_-Ag§.slingshot.birdsAvailable)
                              {
                              }
                              addr96:
                              return;
                              addr89:
                           }
                           _loc2_.§_-4q§();
                           if(_loc4_ && this)
                           {
                           }
                        }
                        else
                        {
                           _loc2_.§_-Er§ = §_-LW§.§_-9R§ / 2;
                        }
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr89);
               }
               §§goto(addr96);
            }
         }
         §§goto(addr60);
      }
      
      public function §_-bh§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§_-H2§(false));
            if(_loc4_ || param1)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || param1)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && param2))
                     {
                        addr43:
                        §§pop();
                        §§push(param2);
                        if(!_loc3_)
                        {
                           addr47:
                           §§push(!§§pop());
                        }
                     }
                     §§goto(addr47);
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || param2)
                     {
                        return;
                     }
                     addr174:
                     §_-Ag§.slingshot.makeBirdsJumpForJoy();
                     §_-Ou§.playSound("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
                  }
                  else
                  {
                     §§push(param1);
                     §§push(§_-8O§);
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc3_)
                           {
                              this.§_-EX§ = 2000;
                              §§goto(addr225);
                           }
                           else
                           {
                              addr128:
                              this.§_-EX§ = 2000;
                              if(!_loc3_)
                              {
                                 §_-Ag§.camera.goToCastleView();
                                 if(_loc3_)
                                 {
                                    addr221:
                                    §_-Ag§.objects.makePigsSmile(5);
                                 }
                                 §§goto(addr225);
                              }
                              else
                              {
                                 addr168:
                                 this.§_-EX§ = 1200;
                                 §_-Ag§.camera.goToBirdView();
                                 §§goto(addr174);
                              }
                           }
                        }
                        else
                        {
                           §§push(param1);
                           §§push(§_-oG§);
                           if(_loc4_ || param1)
                           {
                              if(§§pop() == §§pop())
                              {
                                 §_-Ag§.camera.goToBirdView();
                                 if(!_loc4_)
                                 {
                                    addr162:
                                 }
                              }
                              else if(param1 == §_-Nx§)
                              {
                                 this.§_-O0§ = false;
                                 this.§_-EX§ = 5000;
                                 if(_loc4_)
                                 {
                                    §_-Ag§.particles.moveTrailsNewToOld();
                                    §§goto(addr225);
                                 }
                                 else
                                 {
                                    addr203:
                                    §_-Ou§.playSound("LevelFailedPigs1");
                                    this.§_-EX§ = 1200;
                                    if(_loc4_)
                                    {
                                       §_-Ag§.camera.goToCastleView();
                                       §§goto(addr221);
                                    }
                                 }
                              }
                              else if(param1 == §_-oi§)
                              {
                                 §_-Ag§.camera.goToCastleView();
                              }
                              else if(param1 == §_-x-§)
                              {
                                 §§goto(addr128);
                              }
                              else
                              {
                                 §§push(param1);
                                 §§push(LEVEL_STATE_VICTORY2_END);
                              }
                              §§goto(addr225);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc3_ && param2))
                              {
                                 this.§_-EX§ = 1200;
                                 §_-Ag§.camera.goToBirdView();
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§goto(addr162);
                                 }
                                 else
                                 {
                                    §§goto(addr174);
                                 }
                              }
                              else
                              {
                                 addr194:
                                 §_-Ou§.§_-yO§();
                                 if(_loc4_ || param2)
                                 {
                                    §§goto(addr203);
                                 }
                                 §§goto(addr225);
                              }
                              §§goto(addr225);
                           }
                           else
                           {
                              §§push(param1);
                              §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                              if(!_loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr168);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    §§push(§_-zt§);
                                 }
                                 §§goto(addr225);
                              }
                           }
                        }
                        §§goto(addr225);
                     }
                     if(§§pop() == §§pop())
                     {
                        §§goto(addr194);
                     }
                  }
                  addr225:
                  this.§_-L-§ = param1;
                  return;
               }
               §§goto(addr43);
            }
            §§goto(addr47);
         }
         §§goto(addr221);
      }
      
      public function §_-53§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-Dz§ = null;
         §§push(this);
         §§push(this.§_-24§);
         if(_loc4_)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§_-24§ = §§pop();
         if(!_loc3_)
         {
            §§push(this.§_-24§);
            if(_loc4_)
            {
               §§push(0);
               if(_loc4_)
               {
                  §§push(§§pop() <= §§pop());
                  §§push(§§pop() <= §§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(this.§_-H2§(false));
                              if(_loc4_)
                              {
                                 addr55:
                                 if(!§§pop())
                                 {
                                    this.§_-24§ = §_-Og§;
                                    if(!§_-Ag§.objects.isWorldAtSleep())
                                    {
                                       addr156:
                                       if(this.§_-H2§(false))
                                       {
                                          §_-Ag§.gameOver();
                                          if(_loc4_)
                                          {
                                             addr164:
                                             §§push(this);
                                             §§push(this.§_-EX§);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() - param1);
                                             }
                                             §§pop().§_-EX§ = §§pop();
                                             if(!(_loc3_ && param1))
                                             {
                                                §§push(this.§_-EX§);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(0);
                                                   if(_loc4_)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            this.§_-EX§ = 0;
                                                         }
                                                         addr390:
                                                         addr391:
                                                         addr404:
                                                         addr386:
                                                         §§push(Boolean(§_-Ag§.camera.isOnCastleView()));
                                                         if(Boolean(§_-Ag§.camera.isOnCastleView()))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               addr394:
                                                               §§pop();
                                                               §§push(§_-Ag§.camera.mCurrentAction == §_-LW§.§_-Xu§);
                                                               if(!_loc3_)
                                                               {
                                                                  addr403:
                                                                  §§push(!§§pop());
                                                               }
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            this.§_-bh§(§_-oi§);
                                                         }
                                                         addr593:
                                                         return;
                                                         addr408:
                                                      }
                                                      §§push(this.§_-L-§);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§_-oi§);
                                                         if(_loc4_ || this)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  §_-Ag§.updatePigAnimations(param1);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(!§_-Ag§.camera.isOnCastleView());
                                                                     §§push(!§_-Ag§.camera.isOnCastleView());
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr234:
                                                                        if(§§pop())
                                                                        {
                                                                           addr235:
                                                                           §§pop();
                                                                           addr236:
                                                                           §§push(§_-Ag§.camera.mCurrentAction != §_-LW§.§_-Xu§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr245:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    this.§_-bh§(§_-oG§);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§goto(addr408);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr585:
                                                                                    this.§_-EX§ = 1000;
                                                                                 }
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr390);
                                                                           }
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                     §§goto(addr391);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr427:
                                                                     _loc2_ = §_-Ag§.activeObject;
                                                                     §§push(!_loc2_);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§pop();
                                                                              §§push(_loc2_.§_-Qm§);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr452:
                                                                                 if(§§pop() < _loc2_.§_-FF§)
                                                                                 {
                                                                                    §§push(Boolean(_loc2_));
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   §§push(_loc2_ is §_-he§);
                                                                                                   if(_loc4_ || _loc2_)
                                                                                                   {
                                                                                                      addr487:
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc4_ || this)
                                                                                                      {
                                                                                                         addr497:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr498:
                                                                                                            §§pop();
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               addr506:
                                                                                                               §§push((_loc2_ as §_-zf§).§_-mb§);
                                                                                                               if(_loc4_ || _loc3_)
                                                                                                               {
                                                                                                                  addr519:
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(!!§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr522:
                                                                                                                        §§pop();
                                                                                                                        addr527:
                                                                                                                        if(_loc2_.getSpecialAnimationProgress() >= 0)
                                                                                                                        {
                                                                                                                           this.§_-O0§ = true;
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              this.§_-bh§(§_-x-§);
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 addr538:
                                                                                                                                 §_-Ag§.activeObject = null;
                                                                                                                                 if(_loc4_ || _loc2_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr551:
                                                                                                                                 §§goto(addr390);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           this.§_-bh§(§_-x-§);
                                                                                                                           §§goto(addr551);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr527);
                                                                                                               }
                                                                                                               §§goto(addr522);
                                                                                                            }
                                                                                                            §§goto(addr538);
                                                                                                         }
                                                                                                         §§goto(addr522);
                                                                                                      }
                                                                                                      §§goto(addr519);
                                                                                                   }
                                                                                                   §§goto(addr522);
                                                                                                }
                                                                                                §§goto(addr506);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr487);
                                                                                       }
                                                                                       §§goto(addr497);
                                                                                    }
                                                                                    §§goto(addr487);
                                                                                 }
                                                                                 §§goto(addr538);
                                                                              }
                                                                              §§goto(addr522);
                                                                           }
                                                                           §§goto(addr452);
                                                                        }
                                                                        §§goto(addr497);
                                                                     }
                                                                     §§goto(addr498);
                                                                  }
                                                               }
                                                               §§goto(addr236);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§_-L-§);
                                                               if(!_loc3_)
                                                               {
                                                                  addr263:
                                                                  §§push(§_-x-§);
                                                                  if(_loc4_)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        addr267:
                                                                        §§push(this.§_-EX§);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc4_)
                                                                           {
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(§_-Ag§.objects.isWorldAtSleep())
                                                                                    {
                                                                                       this.§_-bh§(§_-oG§);
                                                                                       addr309:
                                                                                       §§push(!§_-Ag§.camera.isOnCastleView());
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§pop();
                                                                                                addr325:
                                                                                                §§push(§_-Ag§.camera.mCurrentAction != §_-LW§.§_-Xu§);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§goto(addr394);
                                                                                                }
                                                                                                §§goto(addr390);
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                this.§_-bh§(§_-oG§);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr390);
                                                                                       addr305:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§_-24§ = 0;
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          addr302:
                                                                                          this.§_-EX§ = 2000;
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr390);
                                                                                 }
                                                                                 §§goto(addr302);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §_-Ag§.updatePigAnimations(param1);
                                                                              }
                                                                              §§goto(addr309);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr566:
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    if(§_-Ag§.slingshot.updateScoreForRemainingBirds())
                                                                                    {
                                                                                       §§goto(addr585);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§_-bh§(LEVEL_STATE_VICTORY2_END,true);
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr390);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr361:
                                                                           §§push(0);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr364:
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr367:
                                                                                    this.§_-bh§(§_-oG§);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr585);
                                                                                 }
                                                                              }
                                                                              §§goto(addr390);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr566);
                                                                           }
                                                                        }
                                                                        §§goto(addr566);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§_-L-§);
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           §§push(§_-8O§);
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              addr356:
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 §§push(this.§_-EX§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§goto(addr361);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr565:
                                                                                    §§goto(addr566);
                                                                                    §§push(0);
                                                                                 }
                                                                                 §§goto(addr566);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.§_-L-§);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    §§push(§_-oG§);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr383:
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§goto(addr386);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr585);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(this.§_-L-§);
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             addr418:
                                                                                             §§push(§_-Nx§);
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                                addr426:
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   §§goto(addr427);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr554:
                                                                                                   §§push(this.§_-L-§);
                                                                                                   §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                }
                                                                                                §§goto(addr390);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr554);
                                                                                       }
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          §§goto(addr565);
                                                                                          §§push(this.§_-EX§);
                                                                                       }
                                                                                       §§goto(addr585);
                                                                                    }
                                                                                    §§goto(addr390);
                                                                                 }
                                                                                 §§goto(addr554);
                                                                              }
                                                                           }
                                                                           §§goto(addr426);
                                                                        }
                                                                        §§goto(addr418);
                                                                     }
                                                                  }
                                                                  §§goto(addr356);
                                                               }
                                                               §§goto(addr418);
                                                            }
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   §§goto(addr364);
                                                }
                                                §§goto(addr565);
                                             }
                                             §§goto(addr325);
                                          }
                                          §§goto(addr390);
                                       }
                                       §§goto(addr164);
                                    }
                                    else
                                    {
                                       §§push(!§_-Ag§.objects.isPigsAlive());
                                       §§push(!§_-Ag§.objects.isPigsAlive());
                                       if(_loc4_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §§pop();
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(!§_-Ag§.objects.mSardineCanAdded);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      addr98:
                                                      if(§§pop())
                                                      {
                                                         this.§_-bh§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                      }
                                                      else if(§_-Ag§.slingshot.mSlingShotState == §_-7G§.§var §)
                                                      {
                                                         if(§_-Ag§.objects.mMightyEagleAdded)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§push(Boolean(§_-Ag§.objects.mMightyEagleHasTouchedGround));
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr129:
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        §§push(§_-Ag§.objects.mMightyEagleTimer > 5500);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr138:
                                                                           if(§§pop())
                                                                           {
                                                                              this.§_-bh§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                           }
                                                                           else if(§_-Ag§.objects.mMightyEagleHasTouchedGround)
                                                                           {
                                                                              this.§_-24§ = §_-Og§;
                                                                           }
                                                                           §§goto(addr156);
                                                                        }
                                                                        §§goto(addr235);
                                                                     }
                                                                     §§goto(addr138);
                                                                  }
                                                                  §§goto(addr234);
                                                               }
                                                               §§goto(addr245);
                                                            }
                                                            §§goto(addr367);
                                                         }
                                                         else
                                                         {
                                                            this.§_-bh§(§_-zt§);
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr156);
                                                            }
                                                         }
                                                         §§goto(addr427);
                                                      }
                                                   }
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr325);
                                          }
                                          §§goto(addr98);
                                       }
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr55);
                           }
                           §§goto(addr325);
                        }
                        §§goto(addr403);
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr129);
               }
               §§goto(addr566);
            }
            §§goto(addr361);
         }
         §§goto(addr267);
      }
      
      public function §_-H2§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-L-§);
            if(_loc3_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(_loc3_ || _loc3_)
                           {
                              addr38:
                              §§push(this.§_-L-§);
                              if(_loc3_ || param1)
                              {
                                 §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr56:
                                    §§push(§§pop() == §§pop());
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc2_ && param1))
                                    {
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          if(_loc3_)
                                          {
                                             addr75:
                                             §§push(this.§_-L-§);
                                             if(!_loc2_)
                                             {
                                                §§push(§_-zt§);
                                                if(_loc3_)
                                                {
                                                   addr82:
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr90:
                                                      §§push(§§pop());
                                                      if(_loc3_)
                                                      {
                                                         addr93:
                                                         if(§§pop())
                                                         {
                                                            §§pop();
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               §§push(!param1);
                                                               §§push(!param1);
                                                               if(_loc3_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     addr108:
                                                                     §§pop();
                                                                     if(_loc3_)
                                                                     {
                                                                        addr137:
                                                                        return this.§_-EX§ <= 0;
                                                                        addr116:
                                                                     }
                                                                     addr128:
                                                                     §§push(this.§_-L-§ == LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr116);
                                                         }
                                                      }
                                                      §§goto(addr116);
                                                   }
                                                   §§goto(addr137);
                                                }
                                             }
                                             §§goto(addr128);
                                          }
                                          §§goto(addr137);
                                       }
                                       §§goto(addr90);
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr137);
               }
               §§goto(addr56);
            }
            §§goto(addr108);
         }
         §§goto(addr38);
      }
      
      public function §_-1w§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-L-§);
            if(_loc1_ || _loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc2_)
                        {
                           addr58:
                           §§pop();
                           §§push(this.§_-L-§ == §_-zt§);
                        }
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      override public function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!this.§_-06§)
         {
            if(!_loc2_)
            {
               return;
            }
            §§goto(addr92);
         }
         else
         {
            §§push(Boolean(§_-Ag§.slingshot.mDragging));
            if(!_loc2_)
            {
               §§push(§§pop());
               if(!(_loc2_ && param1))
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§pop();
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(Boolean(§_-Ag§.camera.mDragging));
                           if(!(_loc2_ && _loc3_))
                           {
                              addr61:
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    addr92:
                                    §§push(this.§_-L-§);
                                    if(!_loc2_)
                                    {
                                       addr96:
                                       §§push(§_-oi§);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr107:
                                             if(!§§pop())
                                             {
                                                addr109:
                                                §§pop();
                                                if(_loc3_)
                                                {
                                                   §§goto(addr116);
                                                }
                                                §§goto(addr121);
                                             }
                                             §§goto(addr116);
                                          }
                                          §§goto(addr109);
                                       }
                                       §§goto(addr116);
                                    }
                                    addr116:
                                    if(this.§_-L-§ == §_-oG§)
                                    {
                                       if(param1.delta != 0)
                                       {
                                          addr121:
                                          if(!§_-Ag§.isPlayingReplay())
                                          {
                                             if(_loc3_)
                                             {
                                                §_-Ag§.camera.adjustManualScale(param1.delta > 0);
                                                if(_loc3_ || param1)
                                                {
                                                }
                                                §§goto(addr154);
                                             }
                                          }
                                          else
                                          {
                                             §_-Ag§.changeReplaySpeed(param1.delta > 0);
                                          }
                                       }
                                    }
                                    §§goto(addr154);
                                 }
                                 addr154:
                                 return;
                              }
                              §§push(this.§_-L-§);
                              if(!_loc2_)
                              {
                                 §§push(§_-x-§);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(§§pop());
                                       if(!_loc2_)
                                       {
                                          if(!§§pop())
                                          {
                                             addr91:
                                             §§pop();
                                             §§goto(addr92);
                                          }
                                       }
                                       §§goto(addr107);
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr96);
                              §§goto(addr96);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr61);
               }
               §§goto(addr107);
            }
            §§goto(addr61);
         }
         §§goto(addr96);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      override public function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!this.§_-06§)
         {
            if(!_loc4_)
            {
               return;
            }
            addr92:
            this.§_-O0§ = false;
            addr95:
            §_-Ag§.activatePowerup();
            if(_loc5_)
            {
               return;
            }
            addr163:
            §_-Ag§.resetReplaySpeed();
         }
         else
         {
            §_-9Y§.§_-gZ§();
            if(_loc5_)
            {
               §§push(this.§_-H2§(false));
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        return;
                     }
                     §§goto(addr95);
                  }
                  else
                  {
                     if(!§_-Ag§.isPlayingReplay())
                     {
                        addr52:
                        §§push(Boolean(§_-Ag§.activeObject));
                        §§push(Boolean(§_-Ag§.activeObject));
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    §§push(this.§_-L-§ == §_-Nx§);
                                    if(!_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc4_)
                                       {
                                          addr71:
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             addr74:
                                             §§push(this.§_-O0§);
                                             if(!(_loc4_ && param2))
                                             {
                                                addr90:
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr92);
                                          }
                                          else
                                          {
                                             _loc3_ = §_-Ag§.screenToBox2D(param1,param2);
                                             if(_loc5_)
                                             {
                                                if(§_-Ag§.slingshot.canStartDragging(_loc3_))
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      §_-Ag§.slingshot.startDragging();
                                                      if(!(_loc4_ && this))
                                                      {
                                                         addr132:
                                                         this.§_-bh§(§_-oG§);
                                                         if(_loc4_)
                                                         {
                                                            addr158:
                                                            §_-Ag§.camera.startDragging(param1,param2);
                                                            §§goto(addr163);
                                                         }
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                else
                                                {
                                                   §_-Ag§.camera.startDragging(param1,param2);
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      addr157:
                                                      return;
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr158);
                                             }
                                             §§goto(addr132);
                                          }
                                       }
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr74);
                              }
                           }
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr163);
               }
               §§goto(addr52);
            }
         }
      }
      
      private function §_-2q§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.handleMouseDown(param1.stageX,param1.stageY);
         }
      }
      
      public function §_-TB§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §_-9Y§.§_-Ud§();
         }
      }
      
      public function §_-Xs§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.handleMouseUp(NaN,NaN);
            if(!_loc3_)
            {
               §_-9Y§.§_-i8§();
            }
         }
      }
      
      override public function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!(_loc5_ && param2))
         {
            §§push(this.§_-06§);
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  return;
               }
               §_-9Y§.§_-TK§();
               if(§_-Ag§.slingshot.mDragging)
               {
                  if(_loc4_ || param1)
                  {
                     _loc3_ = §_-Ag§.screenToBox2D(param1,param2);
                     if(_loc4_ || param1)
                     {
                        §_-Ag§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                        if(!(_loc5_ && param1))
                        {
                           if(§_-Ag§.slingshot.canShootTheBird())
                           {
                              if(_loc4_ || param1)
                              {
                                 §_-Ag§.slingshot.shoot();
                                 if(_loc5_ && param2)
                                 {
                                 }
                                 addr119:
                                 if(§_-Ag§.camera.mDragging)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(!isNaN(param1));
                                       if(!(_loc5_ && param2))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc5_ && this)
                                             {
                                             }
                                          }
                                          §§goto(addr162);
                                       }
                                       §§pop();
                                       addr151:
                                       addr162:
                                       if(§§pop())
                                       {
                                          §_-Ag§.camera.dragToNewPoint(param1,param2);
                                       }
                                       §_-Ag§.camera.stopDragging();
                                       return;
                                       §§push(!isNaN(param2));
                                    }
                                 }
                                 §§goto(addr162);
                              }
                              this.§_-bh§(§_-Nx§);
                              if(_loc5_ && param1)
                              {
                              }
                           }
                           else
                           {
                              §_-Ag§.slingshot.cancelDragging();
                           }
                        }
                        §§goto(addr119);
                     }
                  }
                  §§goto(addr151);
               }
               §§goto(addr119);
            }
            §§goto(addr162);
         }
         §§goto(addr151);
      }
      
      override public function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!_loc5_)
         {
            if(!this.§_-06§)
            {
               if(!_loc5_)
               {
                  §§goto(addr23);
               }
            }
            else if(§_-Ag§.slingshot.mDragging)
            {
               if(!(_loc5_ && this))
               {
                  _loc3_ = §_-Ag§.screenToBox2D(param1,param2);
                  if(!(_loc5_ && param2))
                  {
                     §_-Ag§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!(_loc5_ && param1))
                     {
                        addr101:
                        this.§_-3y§ = param1;
                        if(!_loc5_)
                        {
                           addr106:
                           this.§_-X0§ = param2;
                        }
                     }
                     return;
                  }
                  §§goto(addr106);
               }
            }
            else if(§_-Ag§.camera.mDragging)
            {
               if(!(_loc5_ && this))
               {
                  §_-Ag§.camera.dragToNewPoint(param1,param2);
               }
            }
            §§goto(addr101);
         }
         addr23:
      }
      
      public function §_-5b§() : Point
      {
         return new Point(this.§_-3y§,this.§_-X0§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-U2§.§_-bB§(this.§_-U2§.getValue() + param1);
         }
      }
      
      override public function getScore() : int
      {
         return this.§_-U2§.getValue();
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§_-06§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§_-06§ = param1;
         }
      }
   }
}
