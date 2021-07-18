package §-p§
{
   import §!!=§.§"l§;
   import §+!c§.§&!0§;
   import §4!<§.§&=§;
   import §4!<§.§'!S§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§9!D§;
   import §@!"§.§?l§;
   import §`!G§.§&!5§;
   import §`!G§.§2"L§;
   import §`!G§.§;i§;
   import §`!G§.§[!8§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §4!`§ extends §+"N§
   {
      
      public static const §]"9§:int = 0;
      
      public static const §6!Y§:int = 1;
      
      public static const §3"L§:int = 2;
      
      public static const §1`§:int = 3;
      
      public static const §7"<§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const LEVEL_STATE_FAIL:int = 7;
      
      protected static const §6!V§:Number = 0.001;
      
      public static const §8!e§:Number = 2000;
      
      public static const §8!a§:Number = 2500;
      
      public static const §+6§:int = 5;
      
      private static var §"!f§:Boolean;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §]"9§ = 0;
         }
         while(true)
         {
            §6!Y§ = 1;
            while(true)
            {
               §3"L§ = 2;
               loop2:
               while(true)
               {
                  §1`§ = 3;
                  while(true)
                  {
                     §7"<§ = 4;
                     while(_loc1_)
                     {
                        LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                        loop5:
                        while(true)
                        {
                           LEVEL_STATE_VICTORY2_END = 6;
                           loop6:
                           while(true)
                           {
                              LEVEL_STATE_FAIL = 7;
                              while(true)
                              {
                                 §§push(§§findproperty(§6!V§));
                                 §§push(§"l§.§[!S§);
                                 if(_loc1_ || §4!`§)
                                 {
                                    §§push(§§pop() / 100);
                                 }
                                 §§pop().§6!V§ = §§pop();
                                 continue loop6;
                                 addr48:
                                 if(_loc1_ || _loc1_)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                        }
                        if(_loc1_ || _loc2_)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr93);
            }
         }
      }
      
      public var §1A§:int = 0;
      
      protected var §]"%§:int = 0;
      
      public var §@!^§:Number;
      
      protected var §[!t§:Number = 0;
      
      protected var §1!v§:Boolean = false;
      
      private var §6"?§:Number = 0;
      
      public var §,!3§:Number = 0;
      
      protected var §#!D§:Number = 0;
      
      protected var §>!&§:Number = 0;
      
      protected var §6!v§:Boolean = true;
      
      protected var §-!6§:§9!D§;
      
      public function §4!`§(param1:§'!S§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-!6§ = new §9!D§();
         }
         do
         {
            super(param1);
         }
         while(_loc2_);
         
      }
      
      public static function §!e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §4!`§))
         {
            §"!f§ = param1;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               this.§-!6§.assign(0);
               loop1:
               while(true)
               {
                  this.§1A§ = -1;
                  while(true)
                  {
                     this.§]"%§ = 0;
                     while(!_loc2_)
                     {
                        continue loop1;
                        loop4:
                        while(_loc1_ || _loc2_)
                        {
                           this.§1!v§ = false;
                           loop5:
                           while(true)
                           {
                              this.changeGameState(§]"9§);
                              addr79:
                              while(_loc1_)
                              {
                                 this.§@!^§ = §8!e§;
                                 while(true)
                                 {
                                    §>!C§(true);
                                    addr50:
                                    while(_loc1_)
                                    {
                                       continue loop5;
                                    }
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               this.§[!t§ = 0;
               §§goto(addr91);
            }
         }
         §§goto(addr45);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1 = mLevelMain.update(param1,true);
         }
         do
         {
            this.§"!D§(param1);
            do
            {
               this.§[_§(param1);
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc3_ && param1);
         
      }
      
      private function §"!D§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§]"%§ != 0)
            {
               if(_loc2_ || _loc2_)
               {
                  addr39:
                  mLevelMain.camera.adjustManualScale(this.§]"%§ > 0,param1 * §6!V§);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            mLevelMain.clearLevel();
         }
         do
         {
            removeEventListeners();
            do
            {
               this.§1A§ = -1;
            }
            while(_loc1_ && _loc1_);
            
         }
         while(!(_loc2_ || _loc2_));
         
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
      
      public function §@"'§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(mLevelMain.camera.mCurrentCameraSliderLocation < §"l§.§-5§)
            {
               if(_loc2_)
               {
                  addr79:
                  return false;
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr54:
                     while(!mLevelMain.objects.isWorldAtSleep())
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§push(true);
                     if(!_loc2_)
                     {
                        addr69:
                        return §§pop();
                     }
                     if(_loc2_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr79);
      }
      
      public function §;!'§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§"l§ = mLevelMain.camera;
         if(_loc3_)
         {
            §§push(_loc2_.§ "'§);
            loop0:
            while(true)
            {
               §§push(0);
               addr118:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     addr23:
                     return;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§ "'§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§ "'§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§-s§(false));
            if(_loc4_ || param1)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || _loc3_)
               {
                  addr455:
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
                           if(_loc3_ && this)
                           {
                              while(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(param1);
                                    while(true)
                                    {
                                       §§push(§]"9§);
                                       loop4:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(param1);
                                          while(true)
                                          {
                                             §§push(§6!Y§);
                                             loop6:
                                             while(§§pop() != §§pop())
                                             {
                                                §§push(param1);
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§3"L§);
                                                   addr369:
                                                   while(§§pop() != §§pop())
                                                   {
                                                      §§push(param1);
                                                      continue loop7;
                                                   }
                                                   loop26:
                                                   while(true)
                                                   {
                                                      §!e§(false);
                                                      loop27:
                                                      while(true)
                                                      {
                                                         this.§,!3§ = 5000;
                                                         addr361:
                                                         addr349:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               mLevelMain.particles.moveTrailsNewToOld();
                                                               break;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr349:
                                                         if(_loc4_ || param2)
                                                         {
                                                            addr29:
                                                            loop21:
                                                            while(true)
                                                            {
                                                               this.§1A§ = param1;
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(!(_loc3_ && param2))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              return;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§,!3§ = 2000;
                                                                              addr314:
                                                                              addr405:
                                                                              while(!_loc3_)
                                                                              {
                                                                                 this.§6"?§ = §+6§;
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       mLevelMain.camera.goToCastleView();
                                                                                       break;
                                                                                    }
                                                                                    addr332:
                                                                                    while(!(_loc4_ || param2))
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break loop6;
                                                                                    }
                                                                                    mLevelMain.camera.goToCastleView();
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                           addr311:
                                                                        }
                                                                        continue;
                                                                     }
                                                                     loop29:
                                                                     for(; _loc4_; mLevelMain.camera.goToBirdView())
                                                                     {
                                                                        mLevelMain.slingshot.makeBirdsJumpForJoy();
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              if(!(_loc4_ || _loc3_))
                                                                              {
                                                                                 addr232:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§,!3§ = 1200;
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!mLevelMain.objects.mMightyEagleAdded)
                                                                                             {
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   continue loop32;
                                                                                                }
                                                                                                continue loop29;
                                                                                                addr185:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    addr193:
                                                                                    continue loop21;
                                                                                 }
                                                                                 addr232:
                                                                              }
                                                                              §§push(§@"M§);
                                                                              §§push("LevelCompletedBirdsMilitary");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                              }
                                                                              §§pop().§3"C§(§§pop());
                                                                              addr158:
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              addr248:
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr193);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr349);
                                                                              }
                                                                           }
                                                                           §§goto(addr185);
                                                                        }
                                                                     }
                                                                     addr245:
                                                                     mLevelMain.camera.goToBirdView();
                                                                     §§goto(addr248);
                                                                     §§goto(addr283);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §@"M§.§3"C§("LevelFailedPigs1");
                                                                           loop35:
                                                                           while(!(_loc3_ && _loc3_))
                                                                           {
                                                                              this.§,!3§ = 1200;
                                                                              while(!(_loc3_ && param1))
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    mLevelMain.camera.goToCastleView();
                                                                                    loop37:
                                                                                    while(_loc4_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break loop4;
                                                                                       }
                                                                                       mLevelMain.objects.makePigsSmile(5);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc3_ && param2))
                                                                                          {
                                                                                             if(!(_loc4_ || _loc3_))
                                                                                             {
                                                                                                continue loop35;
                                                                                             }
                                                                                             if(_loc4_ || param2)
                                                                                             {
                                                                                                §§goto(addr80);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_ && param2)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   this.§,!3§ = 1200;
                                                                                                }
                                                                                                addr266:
                                                                                             }
                                                                                             continue loop35;
                                                                                          }
                                                                                          continue loop37;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr158);
                                                                              }
                                                                              while(_loc3_ && param2)
                                                                              {
                                                                                 §§goto(addr288);
                                                                              }
                                                                              continue loop34;
                                                                           }
                                                                           §§goto(addr165);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!mLevelMain.objects.mMightyEagleAdded)
                                                                              {
                                                                                 §§goto(addr245);
                                                                              }
                                                                              §§goto(addr193);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr361);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr59);
                                                            }
                                                            addr29:
                                                         }
                                                         addr383:
                                                         while(true)
                                                         {
                                                            if(_loc3_ && param1)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(!(_loc4_ || this))
                                                            {
                                                               break loop1;
                                                            }
                                                            §§goto(addr29);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr380:
                                             while(true)
                                             {
                                                mLevelMain.camera.goToBirdView();
                                                §§goto(addr383);
                                             }
                                             while(_loc4_ || param1)
                                             {
                                                §§goto(addr303);
                                                §§push(§7"<§);
                                             }
                                          }
                                       }
                                       this.§,!3§ = 2000;
                                       §§goto(addr405);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              addr434:
                           }
                           continue loop0;
                        }
                        return;
                     }
                     addr457:
                  }
                  while(true)
                  {
                     §§goto(addr434);
                  }
               }
               §§goto(addr457);
            }
            §§goto(addr455);
         }
         §§goto(addr380);
      }
      
      public function §=!q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,!3§ = 2000;
         }
         do
         {
            this.§1!v§ = false;
            do
            {
               this.§[!t§ = 2000;
            }
            while(_loc2_ && _loc2_);
            
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      public function §6!#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§1!v§ = false;
            do
            {
               this.§[!t§ = Math.max(this.§[!t§,param1);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      protected function §6"+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(mLevelMain.slingshot.mSlingShotState == §&=§.§&!K§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr46:
                     §§pop();
                     return !mLevelMain.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public function §[_§(param1:Number) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function setGameOverState(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(!this.§1!v§)
            {
               while(true)
               {
                  this.§1!v§ = true;
                  addr159:
                  while(true)
                  {
                  }
                  addr144:
                  if(_loc4_ || param1)
                  {
                     return;
                  }
               }
            }
            loop1:
            while(true)
            {
               §§push(new Date().time - mLevelMain.slingshot.timeOfLastBirdShot);
               loop2:
               while(true)
               {
                  §§push(6000);
                  loop3:
                  while(§§pop() >= §§pop())
                  {
                     loop4:
                     while(!mLevelMain.slingshot.mDragging)
                     {
                        loop5:
                        while(mLevelMain.objects.isWorldAtSleep())
                        {
                           if(_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    continue;
                                 }
                                 continue loop1;
                              }
                              this.§[!t§ = Math.min(this.§[!t§,3500);
                           }
                           while(true)
                           {
                              break loop5;
                              addr55:
                              if(_loc4_ || param2)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    break loop4;
                                 }
                                 if(!(_loc3_ && this))
                                 {
                                    this.changeGameState(param1,param2);
                                    addr90:
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           return;
                        }
                        while(true)
                        {
                           §§push(this.§[!t§);
                           if(!(_loc4_ || param2))
                           {
                              continue loop2;
                           }
                           §§push(0);
                           if(_loc3_ && _loc3_)
                           {
                              continue loop3;
                           }
                           if(§§pop() <= §§pop())
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr55);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr25);
                           §§goto(addr107);
                        }
                     }
                     if(!_loc3_)
                     {
                        return;
                     }
                     break;
                  }
                  §§goto(addr144);
               }
            }
         }
         §§goto(addr159);
      }
      
      public function §-s§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§1A§);
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
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr240:
                              while(true)
                              {
                                 §§push(this.§1A§);
                                 addr200:
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    addr211:
                                    while(true)
                                    {
                                       if(!(_loc3_ || param1))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr239:
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
                                    loop8:
                                    while(true)
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                break loop8;
                                             }
                                             §§push(this.§1A§);
                                             loop10:
                                             for(; !_loc2_; §§push(this.§1A§),if(!(_loc2_ && param1))
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§goto(addr42);
                                                }
                                                break loop9;
                                             })
                                             {
                                                §§push(LEVEL_STATE_FAIL);
                                                while(_loc3_ || _loc2_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                   if(_loc2_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      addr58:
                                                      if(_loc3_ || param1)
                                                      {
                                                         addr65:
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               addr79:
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr86:
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     addr94:
                                                                     §§push(!§§pop());
                                                                     if(!(_loc3_ || _loc3_))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop18:
                                                                                 while(!§§pop())
                                                                                 {
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                       §§pop();
                                                                                       loop20:
                                                                                       while(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          §§push(this.§,!3§ <= 0);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   break loop18;
                                                                                                   addr131:
                                                                                                }
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc2_ && param1))
                                                                                                   {
                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   addr189:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      break loop18;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             continue loop3;
                                                                                             §§goto(addr65);
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§goto(addr79);
                                                                              }
                                                                              addr161:
                                                                           }
                                                                           §§goto(addr163);
                                                                        }
                                                                     }
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr161);
                                                            }
                                                            §§goto(addr163);
                                                         }
                                                         §§goto(addr120);
                                                      }
                                                      §§goto(addr131);
                                                   }
                                                   §§goto(addr94);
                                                }
                                                §§goto(addr211);
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr200);
                                       }
                                       else
                                       {
                                          §§goto(addr239);
                                       }
                                    }
                                    §§goto(addr240);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr189);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr240);
      }
      
      public function §&!k§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§1A§);
            if(_loc2_ || _loc1_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           addr57:
                           return this.§1A§ == LEVEL_STATE_FAIL;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
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
         if(_loc4_)
         {
            §§push(this.§6!v§);
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
                           addr272:
                           while(true)
                           {
                              §§push(!mLevelMain.mReadyToRun);
                           }
                        }
                        addr271:
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
                                 §§push(Boolean(mLevelMain.slingshot.mDragging));
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr250:
                                                while(_loc4_ || param2)
                                                {
                                                   §§push(Boolean(mLevelMain.camera.mDragging));
                                                }
                                                continue loop7;
                                             }
                                             addr249:
                                          }
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      loop14:
                                                      while(_loc4_ || param1)
                                                      {
                                                         §§push(this.§1A§);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(_loc4_ || param2)
                                                            {
                                                               §§push(§1`§);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop18:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       addr181:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   break loop18;
                                                                                                }
                                                                                                continue loop1;
                                                                                                addr201:
                                                                                             }
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§1A§);
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   §§push(§6!Y§);
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      if(_loc3_ && _loc3_)
                                                                                                      {
                                                                                                         addr111:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr139:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  addr264:
                                                                                                                  §§push(this.§1A§);
                                                                                                                  if(!(_loc3_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§3"L§);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc3_ && param2))
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                         addr111:
                                                                                                         addr138:
                                                                                                      }
                                                                                                      §§goto(addr111);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr212:
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§goto(addr249);
                                                                                          }
                                                                                          §§goto(addr250);
                                                                                       }
                                                                                       addr181:
                                                                                    }
                                                                                    §§goto(addr111);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ || this))
                                                                                    {
                                                                                       break loop17;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§goto(addr212);
                                                                                 }
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr181);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr200:
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               continue loop6;
                                                            }
                                                            addr199:
                                                            while(true)
                                                            {
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr20);
                                                }
                                                else
                                                {
                                                   §§push(this.§1A§);
                                                }
                                                §§goto(addr199);
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr271);
                                    }
                                    §§goto(addr272);
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr264);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §1y§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§]"%§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_)
         {
            if(!this.§6!v§)
            {
               if(_loc5_)
               {
                  §§goto(addr26);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(_loc5_)
            {
               dispatchEvent(_loc3_);
               if(!_loc3_.isDefaultPrevented())
               {
                  loop0:
                  while(true)
                  {
                     §&!0§.§8!R§();
                     loop1:
                     while(true)
                     {
                        §§push(this.§-s§(false));
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(!mLevelMain.isPlayingReplay())
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr159);
                                 }
                                 §§push(Boolean(mLevelMain.activeObject));
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          continue loop2;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             loop11:
                                             while(!_loc6_)
                                             {
                                                §§pop();
                                                loop12:
                                                for(; !_loc6_; §!e§(false),do
                                                {
                                                   mLevelMain.activatePowerup();
                                                }
                                                while(!_loc5_);
                                                ,if(!_loc6_)
                                                {
                                                   return;
                                                })
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         if(_loc6_ && param2)
                                                         {
                                                            return;
                                                         }
                                                         addr183:
                                                         continue loop3;
                                                      }
                                                      continue loop0;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§"!f§);
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr79:
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc5_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc6_ && param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     _loc4_ = mLevelMain.screenToBox2D(param1,param2);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(mLevelMain.slingshot.canStartDragging(_loc4_))
                                                                        {
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              addr214:
                                                                              mLevelMain.slingshot.startDragging();
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 _loc4_ = mLevelMain.screenToBox2D(param1,param2);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    mLevelMain.slingshot.setNewCoordinatesForRubber(_loc4_.x,_loc4_.y,false);
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                    }
                                                                                    break loop3;
                                                                                 }
                                                                                 this.changeGameState(§6!Y§);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    break loop3;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           mLevelMain.camera.startDragging(param1,param2);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr214);
                                                                  }
                                                                  addr283:
                                                                  return;
                                                                  addr81:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               addr101:
                                                            }
                                                            while(_loc5_ || _loc3_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop11;
                                                      }
                                                      §§goto(addr79);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr101);
                                                }
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr81);
                                       }
                                    }
                                 }
                              }
                              mLevelMain.camera.startDragging(param1,param2);
                              if(!_loc6_)
                              {
                                 mLevelMain.resetReplaySpeed();
                              }
                              §§goto(addr283);
                           }
                           addr159:
                           return;
                        }
                     }
                  }
               }
               §§goto(addr183);
            }
            §§goto(addr122);
         }
         addr26:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!(_loc4_ && param1))
         {
            §§push(this.§6!v§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc5_ || param2)
                  {
                     return;
                  }
               }
               else
               {
                  while(true)
                  {
                     §&!0§.§!4§();
                     if(_loc5_ || param2)
                     {
                        if(this.§1A§ == §]"9§)
                        {
                           if(!(_loc4_ && param2))
                           {
                              this.changeGameState(§6!Y§);
                              if(_loc5_)
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 §§goto(addr79);
                              }
                              addr235:
                              if(!isNaN(param2))
                              {
                                 §§goto(addr236);
                              }
                              §§goto(addr217);
                              addr212:
                           }
                           §§goto(addr90);
                        }
                        addr79:
                        if(mLevelMain.slingshot.mDragging)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              addr90:
                              _loc3_ = mLevelMain.screenToBox2D(param1,param2);
                              if(!(_loc4_ && param2))
                              {
                                 mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                 loop1:
                                 while(true)
                                 {
                                    if(!mLevelMain.slingshot.canShootTheBird())
                                    {
                                       mLevelMain.slingshot.cancelDragging();
                                       if(!(_loc5_ || param2))
                                       {
                                          continue;
                                       }
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!_loc4_)
                                          {
                                             if(true)
                                             {
                                                §§goto(addr163);
                                             }
                                          }
                                          else
                                          {
                                             addr150:
                                             mLevelMain.slingshot.shoot();
                                             while(true)
                                             {
                                             }
                                             addr153:
                                          }
                                          while(true)
                                          {
                                             this.changeGameState(§3"L§);
                                             continue loop1;
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr230);
                        }
                        addr163:
                        if(mLevelMain.camera.mDragging)
                        {
                           addr236:
                           if(_loc5_ || _loc3_)
                           {
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              mLevelMain.camera.dragToNewPoint(param1,param2);
                              addr241:
                              loop7:
                              while(true)
                              {
                                 addr217:
                                 while(true)
                                 {
                                    mLevelMain.camera.stopDragging();
                                    if(!_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop7;
                                 }
                                 addr230:
                              }
                           }
                           addr236:
                        }
                        return;
                     }
                     break;
                  }
               }
               §§push(!isNaN(param1));
               if(_loc5_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                     }
                  }
                  §§goto(addr235);
               }
               §§pop();
               if(!(_loc4_ && this))
               {
                  §§goto(addr212);
               }
               §§goto(addr236);
            }
            §§goto(addr235);
         }
         §§goto(addr241);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(_loc5_)
         {
            if(!this.§6!v§)
            {
               if(_loc5_)
               {
                  return;
               }
               addr96:
               mLevelMain.camera.dragToNewPoint(param1,param2);
            }
            else if(mLevelMain.slingshot.mDragging)
            {
               if(!_loc4_)
               {
                  _loc3_ = mLevelMain.screenToBox2D(param1,param2);
                  if(_loc5_ || this)
                  {
                     mLevelMain.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr106);
               }
               else
               {
                  §§goto(addr96);
               }
            }
            else if(mLevelMain.camera.mDragging)
            {
               if(!_loc4_)
               {
                  §§goto(addr96);
               }
            }
         }
         addr101:
         this.§#!D§ = param1;
         if(_loc5_)
         {
            addr106:
            this.§>!&§ = param2;
         }
      }
      
      public function §'"R§() : Point
      {
         return new Point(this.§#!D§,this.§>!&§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§-!6§.assign(this.§-!6§.getValue() + param1);
            loop0:
            while(true)
            {
               this.§6!#§(§8!a§);
               while(this.§1A§ == §7"<§)
               {
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  do
                  {
                     this.§6"?§ = §+6§;
                  }
                  while(!_loc2_);
                  
                  if(_loc2_ || param1)
                  {
                     break;
                  }
               }
               return;
            }
         }
         while(true)
         {
            this.§,!3§ = 2000;
            §§goto(addr79);
         }
      }
      
      override public function getScore() : int
      {
         return this.§-!6§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!§?l§.§'h§.objects.mMightyEagleAdded)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(0);
                  if(_loc3_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr59:
                  §§push(LevelManager.§ "§(LevelManager.§ T§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
         }
         §§goto(addr59);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§6!v§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6!v§ = param1;
         }
      }
   }
}
