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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!>§ = 0;
            while(true)
            {
               §-^§ = 1;
               loop1:
               while(true)
               {
                  §'!4§ = 2;
                  loop2:
                  while(true)
                  {
                     §8!K§ = 3;
                     loop3:
                     while(true)
                     {
                        §;X§ = 4;
                        while(true)
                        {
                           LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                           loop5:
                           for(; !_loc2_; if(_loc1_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           })
                           {
                              LEVEL_STATE_VICTORY2_END = 6;
                              while(true)
                              {
                                 §'z§ = 7;
                                 addr76:
                                 while(_loc1_ || §case§)
                                 {
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc2_ && §case§))
                     {
                        continue loop1;
                     }
                  }
               }
               if(!(_loc1_ || §case§))
               {
                  continue;
               }
               §§push(§§findproperty(§#!K§));
               §§push(§%!-§.§`s§);
               if(!_loc2_)
               {
                  §§push(§§pop() / 100);
               }
               §§pop().§#!K§ = §§pop();
               while(true)
               {
                  §'[§ = 2000;
                  loop9:
                  for(; !_loc2_; while(true)
                  {
                     §-]§ = 5;
                     if(_loc1_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop9;
                     }
                  },return)
                  {
                     if(!_loc2_)
                     {
                        §!r§ = 2500;
                        continue;
                     }
                     §§goto(addr76);
                  }
               }
            }
         }
         §§goto(addr41);
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
         if(_loc3_ || _loc3_)
         {
            this.§4!!§ = new Integer();
            do
            {
               super(param1);
            }
            while(_loc2_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            while(true)
            {
               this.§4!!§.assign(0);
               addr146:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               this.§+L§ = 0;
               loop3:
               while(true)
               {
                  this.§8!W§ = 0;
                  loop4:
                  while(true)
                  {
                     this.§3!^§ = false;
                     loop5:
                     do
                     {
                        this.§6A§(§!>§);
                        loop6:
                        while(true)
                        {
                           this.§ A§ = §'[§;
                           loop7:
                           for(; !_loc1_; if(!(_loc1_ && _loc2_))
                           {
                              continue loop3;
                           })
                           {
                              §0!H§(true);
                              loop8:
                              while(!_loc1_)
                              {
                                 §"!>§.objects.setDamageEnabled(true);
                                 while(true)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       continue loop7;
                                    }
                                    continue loop8;
                                    addr91:
                                    §"!>§.objects.setGroundTextureEnabled(true);
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       continue loop5;
                                    }
                                 }
                                 continue loop7;
                              }
                              continue loop6;
                           }
                           continue loop4;
                        }
                     }
                     while(_loc1_);
                     
                     addr45:
                     if(!(_loc1_ && this))
                     {
                        return;
                     }
                     addr160:
                     while(_loc2_)
                     {
                        §§goto(addr146);
                        §§goto(addr45);
                     }
                     while(true)
                     {
                        this.§`!#§ = -1;
                        §§goto(addr144);
                     }
                     addr144:
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr91);
               }
            }
         }
         §§goto(addr160);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1 = §"!>§.update(param1,true);
            while(true)
            {
               this.§-e§(param1);
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            this.§<!C§(param1);
            if(_loc2_)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §-e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§+L§ != 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr45:
                  §"!>§.camera.adjustManualScale(this.§+L§ > 0,param1 * §#!K§);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"!>§.clearLevel();
            while(true)
            {
               removeEventListeners();
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§`!#§ = -1;
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
         §§goto(addr46);
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
      
      public function §>e§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§"!>§.camera.mCurrentCameraSliderLocation >= §%!-§.§[!a§)
            {
               loop0:
               while(true)
               {
                  §§push(!§"!>§.objects.isWorldAtSleep());
                  while(true)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(false);
                                 break;
                              }
                              continue loop0;
                           }
                           if(!_loc1_)
                           {
                              §§goto(addr90);
                           }
                        }
                        §§push(true);
                        if(!(_loc1_ || _loc1_))
                        {
                           break;
                        }
                        if(_loc1_)
                        {
                           return §§pop();
                        }
                        continue;
                     }
                     §§goto(addr90);
                  }
                  return §§pop();
               }
            }
         }
         addr90:
         return false;
      }
      
      public function §6g§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§%!-§ = §"!>§.camera;
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_.§8o§);
            loop0:
            while(true)
            {
               §§push(0);
               addr137:
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
                     §§push(_loc2_.§8o§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§8o§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §6A§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
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
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr529:
                        while(true)
                        {
                           §§push(param2);
                           addr504:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr505:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr506:
                                 while(_loc4_ || param2)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     addr528:
                  }
                  loop7:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§push(param1);
                        while(true)
                        {
                           §§push(§!>§);
                           loop10:
                           while(§§pop() != §§pop())
                           {
                              §§push(param1);
                              loop11:
                              while(true)
                              {
                                 §§push(§-^§);
                                 addr476:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(param1);
                                    continue loop11;
                                 }
                                 addr477:
                                 addr482:
                                 §"!>§.camera.goToBirdView();
                                 loop24:
                                 while(true)
                                 {
                                    this.§`!#§ = param1;
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       addr195:
                                       loop25:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(SoundEngine.§9!X§("LevelFailedPigs1"));
                                             if(_loc4_)
                                             {
                                                §§pop();
                                                loop26:
                                                while(!(_loc3_ && param1))
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         if(_loc4_ || param2)
                                                         {
                                                            this.§#!3§ = 1200;
                                                            loop27:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                     addr444:
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     §"!>§.camera.goToCastleView();
                                                                     loop28:
                                                                     for(; !(_loc3_ && _loc3_); while(true)
                                                                     {
                                                                        if(!(_loc4_ || param1))
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop27;
                                                                        }
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(!(_loc4_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop24;
                                                                        }
                                                                        addr302:
                                                                        while(true)
                                                                        {
                                                                           §§push(!§"!>§.objects.mMightyEagleAdded);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              if(_loc4_ || param1)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          break loop26;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(SoundEngine);
                                                                                          §§push("LevelCompletedBirdsMilitary");
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                                          }
                                                                                          §§push(§§pop().§9!X§(§§pop()));
                                                                                          addr217:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             break loop27;
                                                                                          }
                                                                                       }
                                                                                       addr198:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr528);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr504);
                                                                              }
                                                                              §§goto(addr506);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr309);
                                                                           }
                                                                        }
                                                                     },§§goto(addr482))
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           §"!>§.objects.makePigsSmile(5);
                                                                           continue;
                                                                        }
                                                                        addr469:
                                                                        this.§#!3§ = 5000;
                                                                     }
                                                                     §§goto(addr371);
                                                                  }
                                                                  §"!>§.particles.moveTrailsNewToOld();
                                                                  continue loop24;
                                                               }
                                                               continue loop26;
                                                            }
                                                            while(!(_loc4_ || _loc3_))
                                                            {
                                                               while(_loc3_)
                                                               {
                                                                  §§goto(addr317);
                                                               }
                                                               §"!>§.slingshot.makeBirdsJumpForJoy();
                                                               §§goto(addr198);
                                                               §§goto(addr217);
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop24;
                                                               §§goto(addr218);
                                                            }
                                                            addr218:
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            §"!>§.camera.goToCastleView();
                                                            addr371:
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ || _loc3_))
                                                               {
                                                                  addr432:
                                                                  §"!>§.camera.goToCastleView();
                                                                  continue loop24;
                                                                  addr437:
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  continue loop24;
                                                                  addr380:
                                                               }
                                                               §§goto(addr529);
                                                            }
                                                         }
                                                         addr386:
                                                      }
                                                      else
                                                      {
                                                         while(_loc4_)
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               §§push(!§"!>§.objects.mMightyEagleAdded);
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(!_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break loop10;
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 this.§#!3§ = 2000;
                                                                                 while(true)
                                                                                 {
                                                                                    this.§-o§ = §-]§;
                                                                                    §§goto(addr386);
                                                                                 }
                                                                                 §§goto(addr380);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr477);
                                                                              }
                                                                           }
                                                                        }
                                                                        §"!>§.camera.goToBirdView();
                                                                        break loop25;
                                                                        addr317:
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr505);
                                                               }
                                                               addr309:
                                                            }
                                                            continue loop24;
                                                         }
                                                         §§goto(addr437);
                                                         addr355:
                                                      }
                                                      §§goto(addr505);
                                                   }
                                                   break loop25;
                                                }
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §"!>§.camera.goToBirdView();
                                                      §§goto(addr275);
                                                   }
                                                   §§goto(addr417);
                                                }
                                             }
                                             §§goto(addr217);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§#!3§ = 1200;
                                             }
                                             addr299:
                                          }
                                          §§goto(addr302);
                                       }
                                       if(_loc4_)
                                       {
                                          §§goto(addr309);
                                       }
                                       else
                                       {
                                          §§goto(addr444);
                                       }
                                    }
                                    §§goto(addr45);
                                 }
                                 return;
                              }
                           }
                           this.§#!3§ = 2000;
                           §§goto(addr501);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr225);
      }
      
      public function §=!_§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§8!W§ = Math.max(this.§8!W§,param1);
         }
      }
      
      protected function §^G§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§"!>§.slingshot.mSlingShotState == LevelSlingshot.§71§);
            if(!(_loc1_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop());
                  if(!(_loc1_ && this))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        §§pop();
                        addr85:
                        §§push(!§"!>§.objects.hasBirds());
                        if(!_loc2_)
                        {
                        }
                     }
                  }
                  §§goto(addr93);
               }
               §§push(Boolean(§§pop()));
            }
            addr93:
            return §§pop();
         }
         §§goto(addr85);
      }
      
      public function §<!C§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:LevelObject = null;
         if(!(_loc6_ && _loc3_))
         {
            §§push(this);
            §§push(this.§ A§);
            if(_loc5_)
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
                        if(!_loc6_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§8!W§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§8!W§);
                           while(true)
                           {
                              §§push(0);
                              addr1362:
                              addr1339:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§ A§ = 0;
                                       addr1366:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr1363:
                                 }
                              }
                              loop9:
                              while(!(_loc6_ && _loc2_))
                              {
                                 §§push(0);
                                 loop10:
                                 while(_loc5_)
                                 {
                                    §§push(§§pop() <= §§pop());
                                    loop11:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop13:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop14:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop16:
                                                      while(!_loc6_)
                                                      {
                                                         §§push(this.§;!5§(false));
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr1327:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           this.§ A§ = §'[§;
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§push(Boolean(§"!>§.objects.isWorldAtSleep()));
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      loop40:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop41:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§3!^§);
                                                                                                                  addr1257:
                                                                                                                  while(_loc5_ || param1)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        addr1266:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               addr1255:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(!§"!>§.objects.isPigsAlive());
                                                                                                               loop42:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  loop43:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           loop45:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              loop72:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop73:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    loop74:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc5_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          loop75:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   loop76:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      loop77:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(!§"!>§.objects.mMightyEagleAdded);
                                                                                                                                                               continue loop73;
                                                                                                                                                            }
                                                                                                                                                            loop80:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§8!W§);
                                                                                                                                                               loop81:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(6000);
                                                                                                                                                                  loop82:
                                                                                                                                                                  while(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     loop83:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        addr1232:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           loop85:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              loop86:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 addr1235:
                                                                                                                                                                                 loop107:
                                                                                                                                                                                 while(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       loop108:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          loop109:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(!§"!>§.objects.isPigsAlive());
                                                                                                                                                                                             loop48:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                addr1214:
                                                                                                                                                                                                addr1295:
                                                                                                                                                                                                while(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   loop36:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§8!W§);
                                                                                                                                                                                                      loop37:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         loop38:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                            addr1245:
                                                                                                                                                                                                            addr1304:
                                                                                                                                                                                                            while(_loc5_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                               continue loop40;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               loop30:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§3!^§);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                                                                     addr1275:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop18;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop11;
                                                                                                                                                                                                                     addr427:
                                                                                                                                                                                                                     if(_loc6_ && this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     if(!(_loc6_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr442:
                                                                                                                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§"!>§.camera.mCurrentAction == §%!-§.§ d§);
                                                                                                                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop85;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(!§§pop());
                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr337:
                                                                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop26;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                          loop150:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop131:
                                                                                                                                                                                                                                                while(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop145:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc5_ || this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop36;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         this.§6A§(§-^§);
                                                                                                                                                                                                                                                         loop148:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop131;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            loop132:
                                                                                                                                                                                                                                                            for(; !_loc6_; §§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§-o§);
                                                                                                                                                                                                                                                               loop146:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                  if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc6_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop38;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                     loop151:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                        loop133:
                                                                                                                                                                                                                                                                        for(; _loc5_; while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc6_ && param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop133;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr490);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr457);
                                                                                                                                                                                                                                                                        })
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop73;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop43;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           loop134:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 loop153:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§#!3§ = 2000;
                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§ A§ = 0;
                                                                                                                                                                                                                                                                                       loop154:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                                                                §§push(this.§-o§);
                                                                                                                                                                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - 1);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§pop().§-o§ = §§pop();
                                                                                                                                                                                                                                                                                                loop144:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         loop141:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(!§"!>§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr390:
                                                                                                                                                                                                                                                                                                                     loop129:
                                                                                                                                                                                                                                                                                                                     for(; !(_loc6_ && _loc2_); §§goto(addr390))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                                                                           loop139:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop45;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                    loop140:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc5_ || param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop75;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop131;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             while(!_loc6_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§goto(addr427);
                                                                                                                                                                                                                                                                                                                                                continue loop141;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                                                                                                                                                                             addr425:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                             continue loop45;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr772:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       loop135:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                             while(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            break loop134;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         continue loop134;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop27;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop28;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop86;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             loop54:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                loop55:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      loop56:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop15;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                                                                         loop57:
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(this.§^G§());
                                                                                                                                                                                                                                                                                                                                                               while(_loc5_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr1167:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           while(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              this.§8!W§ = 15000;
                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 this.§3!^§ = true;
                                                                                                                                                                                                                                                                                                                                                                                 addr1159:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop21;
                                                                                                                                                                                                                                                                                                                                                                           addr1168:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr77:
                                                                                                                                                                                                                                                                                                                                                                  if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop41;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr94:
                                                                                                                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop150;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  if(_loc6_ && this)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue loop76;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  loop128:
                                                                                                                                                                                                                                                                                                                                                                  while(§§pop())
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    this.§6A§(§8!K§);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc6_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             continue loop148;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr895:
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr1685:
                                                                                                                                                                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                                                                                                                                                                                addr157:
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   this.§>u§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                                                                                                                                                   addr1001:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr919:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr996:
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                loop162:
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§"!>§.camera.mCurrentAction == §%!-§.§ d§);
                                                                                                                                                                                                                                                                                                                                                                                                   addr722:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                  break loop133;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr1179:
                                                                                                                                                                                                                                                                                                                                                                                                               addr1179:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  loop52:
                                                                                                                                                                                                                                                                                                                                                                                                                  while(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                     loop53:
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop54;
                                                                                                                                                                                                                                                                                                                                                                                                                        addr788:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop162;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop108;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop52;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop53;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop24;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr732:
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1167);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         loop157:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                            addr769:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr772);
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1257);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop157;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr768:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             addr511:
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§;!5§(false));
                                                                                                                                                                                                                                                                                                                                                                                             continue loop23;
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          addr895:
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr251:
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.§#!3§);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc6_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop146;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      loop118:
                                                                                                                                                                                                                                                                                                                                                                                                      while(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop9;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               loop119:
                                                                                                                                                                                                                                                                                                                                                                                                               while(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  this.§#!3§ = 0;
                                                                                                                                                                                                                                                                                                                                                                                                                  while(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§`!#§);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§8!K§);
                                                                                                                                                                                                                                                                                                                                                                                                                           loop122:
                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr829:
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§`!#§);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc6_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§;X§);
                                                                                                                                                                                                                                                                                                                                                                                                                              while(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr670:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.§#!3§);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop82;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §"!>§.updatePigAnimations(param1);
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr465:
                                                                                                                                                                                                                                                                                                                                                                                                                                             continue loop141;
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr688:
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr700:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(Boolean(§"!>§.objects.hasBirds()));
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr708:
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop135;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr596:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1001);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr756:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   this.§6A§(§-^§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr761:
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr987:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   loop99:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr996);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         else if(§"!>§.objects.mMightyEagleHasTouchedGround)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr965:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc6_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               this.§ A§ = §'[§;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop77;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1658:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(this.§#!3§ <= 0)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1666:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(§"!>§.slingshot.updateScoreForRemainingBirds())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           break loop23;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        this.§6A§(LEVEL_STATE_VICTORY2_END,true);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1678:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr919);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      loop89:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!§"!>§.objects.mMightyEagleAdded)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(!§"!>§.objects.mSardineCanAdded);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           this.§>u§(§'z§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr895);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 break loop56;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop3;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr895);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1087:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr895);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr928:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr895);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr927:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Boolean(§"!>§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1018:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1023:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  while(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc6_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop74;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           break loop99;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr994);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop13;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop14;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1066:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           break loop132;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1007:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§^G§());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop89;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr895);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1073:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop72;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop48;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1103:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr895);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            continue loop1;
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr994:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                         break loop119;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1214);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr987);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr986:
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr895);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr829);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1658);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    break loop23;
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.§`!#§);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§!>§);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§`!#§);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§-^§);
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop154;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§"!>§.camera.isOnCastleView()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                         loop125:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               continue loop151;
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop140;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc6_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop139;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           loop126:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop129;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop133;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       continue loop153;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(§"!>§.camera.mCurrentAction == §%!-§.§ d§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop126;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          continue loop125;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc6_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                continue loop56;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr77);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr425);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr94);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr722);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr700);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1179);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr94);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop153;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr231:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr474:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc6_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    break loop134;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop133;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop129;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop128;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop55;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1018);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr769);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr732);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         continue loop151;
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr688);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr700);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   continue loop154;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr171:
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1637:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(this.§`!#§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   break loop122;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1635:
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(§§pop() == LEVEL_STATE_VICTORY1_SLINGSHOT)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1658);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1678);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1403:
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   break loop23;
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                _loc4_ = §"!>§.activeObject;
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1629:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(Boolean(!_loc4_));
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(Boolean(!_loc4_));
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1630:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1606:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc4_.§0o§ < _loc4_.§]!3§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1605:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr1631:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr1607:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Boolean(_loc4_));
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(Boolean(_loc4_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1613:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1614:
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr1544:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc4_ is §3l§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1564:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1572:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1575:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1590:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push((_loc4_ as §4!G§).§2s§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1509:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(Boolean(!§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr1512:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1527:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  addr1530:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1538:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() >= 0);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1488:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1490:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          this.§^!-§ = true;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          this.§6A§(§;X§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1440:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §"!>§.activeObject = null;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1461:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                this.§6A§(§;X§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1440);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            addr1632:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1590);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1538);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1461);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1440);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1490);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1497:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1497);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1607);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1614);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1440);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1606);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1509);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1530);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1606);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1575);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1488);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1607);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1564);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1572);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1527);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1630);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1530);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1544);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1512);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1607);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1613);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1488);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1629);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1607);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1629);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1575);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1629);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1631);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1564);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1632);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1605);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1607);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1635);
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(this.§`!#§);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          break loop122;
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr251);
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1635);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 break loop122;
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§'!4§);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1403);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1637);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr157);
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr442);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc5_ || this))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop109;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §"!>§.gameOver();
                                                                                                                                                                                                                                                                                                                                                                                                                     loop64:
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr873:
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(this.§#!3§);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - param1);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§pop().§#!3§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.§#!3§);
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop118;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1406);
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop64;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr865);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr865:
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop109;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr986);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr855:
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr806);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1658);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      continue loop81;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            this.§6A§(§-^§);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop145;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr928);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr708);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop144;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc5_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           this.§6A§(§-^§);
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr511);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1255);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        addr843:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr768);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  addr490:
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr895);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1406);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1658);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr670);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1658);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1159);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    break loop23;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1173);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr465);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr171);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr231);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1658);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1685);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1275);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1223:
                                                                                                                                                                                                                                                                                                                                                                  this.§3!^§ = true;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1130);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1166);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr600:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1023);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1031);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr600);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                 break loop107;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              break loop107;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr1290:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1007);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr927);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr425);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr457:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr761);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr976);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr918);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1406);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§]!B§.§>F§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr474);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop83;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop132;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1266);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr987);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(!(_loc6_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc6_ && _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr754:
                                                                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr756);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1265);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr788);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1658);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this.§>u§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                  §§goto(addr1087);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(_loc5_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1223);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1363);
                                                                                                                                                                                                                                                                  addr1221:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr895);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr855);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1685);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1245);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr347:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr596);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr347);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    continue loop80;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr337);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§8!W§ = 6000;
                                                                                                                                                                                                                              §§goto(addr1221);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1218:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr865);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1666);
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
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1218);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1179);
                                                                                                                                                                                          §§push(this.§3!^§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1130);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1295);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop10;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1168);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1073);
                                                                                                                                                }
                                                                                                                                                §§goto(addr895);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1235);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr1269);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1268:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1232);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr1267:
                                                                                                                        }
                                                                                                                        §§goto(addr1268);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1267);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1304);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              this.§#!3§ = 1000;
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr1678);
                                                                              }
                                                                              §§goto(addr1685);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr873);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1366);
                                                   }
                                                }
                                                §§goto(addr1327);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1362);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr1339);
                  }
               }
            }
         }
         while(true)
         {
            §"!>§.updatePigAnimations(param1);
            §§goto(addr843);
         }
      }
      
      protected function §>u§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§3!^§);
            if(_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc4_ || this)
               {
                  this.§3!^§ = true;
               }
               while(true)
               {
               }
               addr157:
            }
            loop1:
            while(true)
            {
               §§push(new Date().time - §"!>§.slingshot.timeOfLastBirdShot);
               loop2:
               while(true)
               {
                  §§push(6000);
                  addr136:
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        while(true)
                        {
                        }
                        addr140:
                     }
                     addr108:
                     while(true)
                     {
                        if(!§"!>§.slingshot.mDragging)
                        {
                           loop6:
                           while(true)
                           {
                              if(!§"!>§.objects.isWorldAtSleep())
                              {
                                 continue loop2;
                              }
                              if(_loc4_ || this)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§8!W§ = Math.min(this.§8!W§,3500);
                                 }
                              }
                              while(!(_loc3_ && this))
                              {
                                 continue loop2;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       if(!_loc3_)
                                       {
                                          this.§6A§(param1,param2);
                                          addr20:
                                          return;
                                          addr76:
                                       }
                                       continue loop1;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                           §§goto(addr140);
                        }
                        return;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §;!5§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§`!#§);
            while(true)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr280:
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
                                       §§push(this.§`!#§);
                                       addr234:
                                       while(true)
                                       {
                                          §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                          addr236:
                                          while(_loc3_ || _loc2_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 addr281:
                              }
                              while(true)
                              {
                                 addr256:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr281);
                  }
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                           if(_loc3_ || param1)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr65);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr256);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr87);
               }
               §§goto(addr210);
            }
         }
         §§goto(addr161);
      }
      
      public function §?Z§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§`!#§);
            if(_loc2_ || _loc1_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        if(_loc2_ || this)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           if(_loc2_ || this)
                           {
                              addr80:
                              §§pop();
                              §§push(this.§`!#§ == §'z§);
                              if(!_loc1_)
                              {
                                 addr88:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           §§goto(addr88);
                        }
                        return §§pop();
                     }
                     §§goto(addr88);
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1.delta != 0)
            {
               if(!_loc3_)
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
         if(_loc2_)
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
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(!§"!>§.mReadyToRun);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr154:
                                    if(_loc2_ || param1)
                                    {
                                       loop23:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc3_ && param1))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc3_)
                                          {
                                             if(!§§pop())
                                             {
                                                loop24:
                                                while(_loc2_)
                                                {
                                                   §§pop();
                                                   loop25:
                                                   do
                                                   {
                                                      if(_loc2_ || param1)
                                                      {
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               addr198:
                                                               §§push(this.§`!#§);
                                                               if(_loc2_ || param1)
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§push(§-^§);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              addr72:
                                                                              if(_loc2_ || this)
                                                                              {
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc3_ && this)
                                                                                       {
                                                                                       }
                                                                                       continue loop24;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §"!>§.changeReplaySpeed(param1);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break loop25;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          §"!>§.camera.adjustManualScale(param1);
                                                                                          break;
                                                                                       }
                                                                                       addr254:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§`!#§);
                                                                                          addr129:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§8!K§);
                                                                                             addr131:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                             }
                                                                                             §§goto(addr198);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                    addr102:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(!(_loc2_ || param1))
                                                                                       {
                                                                                          break;
                                                                                          addr152:
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§goto(addr154);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         break loop23;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   break loop23;
                                                                                                }
                                                                                                addr282:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   loop14:
                                                                                                   while(_loc2_)
                                                                                                   {
                                                                                                      §§push(Boolean(§"!>§.camera.mDragging));
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  break loop25;
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            addr209:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.§`!#§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§;X§);
                                                                                                               addr216:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  break loop24;
                                                                                                               }
                                                                                                            }
                                                                                                            addr214:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§goto(addr282);
                                                                                                }
                                                                                                §§goto(addr207);
                                                                                             }
                                                                                             addr232:
                                                                                             addr281:
                                                                                          }
                                                                                          §§goto(addr72);
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    addr253:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr254);
                                                                                    }
                                                                                 }
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr294);
                                                                                    }
                                                                                    addr255:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr261);
                                                                                    }
                                                                                 }
                                                                                 addr261:
                                                                                 addr293:
                                                                              }
                                                                              §§goto(addr152);
                                                                           }
                                                                           §§goto(addr102);
                                                                        }
                                                                        §§goto(addr216);
                                                                     }
                                                                     §§goto(addr131);
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               §§goto(addr129);
                                                            }
                                                            addr294:
                                                            return;
                                                         }
                                                         while(true)
                                                         {
                                                         }
                                                         addr295:
                                                         §§goto(addr255);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   while(!(_loc2_ || this));
                                                   
                                                   return;
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(!(_loc2_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr232);
                                                   §§push(Boolean(§§pop()));
                                                }
                                                continue loop2;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr98);
                                                }
                                                §§goto(addr19);
                                             }
                                          }
                                          break;
                                       }
                                       for(; !(_loc3_ && this); §§goto(addr161))
                                       {
                                          if(§§pop())
                                          {
                                             continue;
                                          }
                                          §§goto(addr253);
                                       }
                                       addr161:
                                       while(!_loc3_)
                                       {
                                          §§goto(addr281);
                                          §§push(Boolean(§§pop()));
                                          §§goto(addr245);
                                       }
                                       addr245:
                                       continue loop3;
                                       addr278:
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr293);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr295);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §]!,§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§+L§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(!(_loc6_ && param1))
         {
            §§push(this.§6'§);
            if(_loc5_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc6_)
               {
                  §§goto(addr34);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(_loc5_)
            {
               dispatchEvent(_loc3_);
            }
            loop0:
            for(; !_loc3_.isDefaultPrevented(); if(!(_loc5_ || this))
            {
               continue;
            },this.§^!-§ = false,while(true)
            {
               if(_loc5_)
               {
                  §"!>§.activatePowerup();
                  if(_loc6_ && param1)
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr206);
            },§§goto(addr329))
            {
               §§push(§3r§.§#!9§());
               while(true)
               {
                  §§pop();
                  if(!(_loc5_ || param2))
                  {
                     addr333:
                     return;
                  }
                  §§push(this.§;!5§(false));
                  loop2:
                  while(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(!§"!>§.isPlayingReplay());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(Boolean(§"!>§.activeObject));
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop7:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop8:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      addr203:
                                                      if(_loc5_)
                                                      {
                                                         return;
                                                      }
                                                      break loop0;
                                                   }
                                                   §§push(this.§`!#§ == §'!4§);
                                                   if(_loc5_)
                                                   {
                                                      if(!(_loc5_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc5_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr175:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§^!-§);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(_loc6_ && param2)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        if(!(_loc5_ || param1))
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr174:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr175);
                                                                     }
                                                                     continue loop0;
                                                                     addr120:
                                                                  }
                                                                  _loc4_ = §"!>§.screenToBox2D(param1,param2);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(!§"!>§.slingshot.canStartDragging(_loc4_))
                                                                     {
                                                                        §"!>§.camera.startDragging(param1,param2);
                                                                        if(!(_loc5_ || param2))
                                                                        {
                                                                           addr309:
                                                                           §"!>§.slingshot.startDragging();
                                                                           this.§6A§(§-^§);
                                                                           addr314:
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr314);
                                                               }
                                                            }
                                                            continue loop8;
                                                            addr164:
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr333);
                                             }
                                             §§goto(addr164);
                                          }
                                       }
                                    }
                                 }
                                 addr182:
                              }
                              else
                              {
                                 §"!>§.camera.startDragging(param1,param2);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr329:
                                    §"!>§.resetReplaySpeed();
                                 }
                                 §§goto(addr333);
                              }
                              §§goto(addr333);
                           }
                           addr206:
                        }
                     }
                     §§goto(addr203);
                  }
               }
            }
            return;
         }
         addr34:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!_loc4_)
         {
            §§push(this.§6'§);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        return;
                     }
                     addr276:
                     while(true)
                     {
                     }
                     addr276:
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        §§push(§3r§.§7!i§());
                        if(!(_loc4_ && param2))
                        {
                           §§pop();
                           for(; this.§`!#§ == §!>§; if(!(_loc4_ && param2))
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue loop0;
                           })
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 this.§6A§(§-^§);
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                                 addr269:
                                 addr269:
                                 while(true)
                                 {
                                    §"!>§.camera.dragToNewPoint(param1,param2);
                                    §§goto(addr276);
                                 }
                                 addr269:
                              }
                              else
                              {
                                 addr268:
                                 §§push(!isNaN(param2));
                                 if(_loc5_ || this)
                                 {
                                    addr267:
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr269);
                                 }
                                 addr225:
                              }
                           }
                           if(§"!>§.slingshot.mDragging)
                           {
                              if(_loc5_)
                              {
                                 _loc3_ = §"!>§.screenToBox2D(param1,param2);
                                 if(_loc5_)
                                 {
                                    §"!>§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                    loop2:
                                    while(true)
                                    {
                                       if(!§"!>§.slingshot.canShootTheBird())
                                       {
                                          §"!>§.slingshot.cancelDragging();
                                          if(_loc5_ || this)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue;
                                             }
                                             if(_loc5_ || this)
                                             {
                                                if(false)
                                                {
                                                   addr142:
                                                   this.§6A§(§'!4§);
                                                   break;
                                                }
                                                §§goto(addr179);
                                             }
                                             addr155:
                                             while(true)
                                             {
                                                §"!>§.slingshot.shoot();
                                                continue loop2;
                                             }
                                          }
                                          break;
                                       }
                                    }
                                    §§goto(addr179);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr179);
                        }
                        break;
                     }
                     addr197:
                     §§push(Boolean(§§pop()));
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§pop();
                              if(_loc5_)
                              {
                                 §§goto(addr225);
                              }
                              §§goto(addr269);
                           }
                        }
                        §§goto(addr268);
                     }
                     §§goto(addr267);
                  }
                  while(true)
                  {
                     §"!>§.camera.stopDragging();
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        break;
                     }
                     §§goto(addr269);
                  }
                  addr179:
                  if(§"!>§.camera.mDragging)
                  {
                     if(_loc5_)
                     {
                        addr186:
                        §§push(!isNaN(param1));
                        if(_loc5_ || this)
                        {
                           break loop0;
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr269);
                  }
                  return;
               }
            }
            §§goto(addr197);
         }
         §§goto(addr186);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_ || this)
         {
            §§push(this.§6'§);
            if(_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc4_ || _loc3_)
               {
                  return;
               }
            }
         }
         if(§"!>§.slingshot.mDragging)
         {
            if(!(_loc5_ && param1))
            {
               _loc3_ = §"!>§.screenToBox2D(param1,param2);
               if(!_loc5_)
               {
                  §"!>§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                  if(!(_loc5_ && this))
                  {
                     addr115:
                     this.§!-§ = param1;
                     if(!(_loc5_ && param1))
                     {
                        addr125:
                        this.§ `§ = param2;
                     }
                     return;
                     addr100:
                  }
                  §§goto(addr125);
               }
               §§goto(addr100);
            }
            else
            {
               addr108:
               §"!>§.camera.dragToNewPoint(param1,param2);
            }
         }
         else if(§"!>§.camera.mDragging)
         {
            if(!_loc5_)
            {
               §§goto(addr108);
            }
         }
         §§goto(addr115);
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
         }
         loop0:
         while(true)
         {
            this.§=!_§(§!r§);
            loop1:
            while(this.§`!#§ == §;X§)
            {
               if(_loc3_ || this)
               {
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  this.§#!3§ = 2000;
                  §§goto(addr80);
                  continue;
               }
               addr80:
               while(_loc3_)
               {
                  this.§-o§ = §-]§;
                  if(!(_loc2_ && param1))
                  {
                     break loop1;
                  }
               }
               continue loop0;
            }
            return;
         }
      }
      
      override public function getScore() : int
      {
         return this.§4!!§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            §§push(§]!B§.§>F§.objects.mMightyEagleAdded);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc3_ || _loc3_)
               {
                  addr49:
                  §§push(0);
                  if(_loc3_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr68:
                  §§push(LevelManager.§;!a§(LevelManager.§var§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
            §§goto(addr68);
         }
         §§goto(addr49);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§6'§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6'§ = param1;
         }
      }
   }
}
