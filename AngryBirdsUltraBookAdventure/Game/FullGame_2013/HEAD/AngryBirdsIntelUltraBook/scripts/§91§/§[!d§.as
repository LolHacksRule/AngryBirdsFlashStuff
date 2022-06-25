package §91§
{
   import §!!0§.SoundEngine;
   import §5=§.Integer;
   import §5u§.§[!,§;
   import §6!!§.§6!f§;
   import §6!!§.§8!@§;
   import §6!!§.LevelObject;
   import §<u§.§%c§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import §]!@§.LevelMain;
   import §]!@§.LevelSlingshot;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §[!d§ extends BasicController
   {
      
      public static const §7D§:int = 0;
      
      public static const §!!^§:int = 1;
      
      public static const §#o§:int = 2;
      
      public static const §0!O§:int = 3;
      
      public static const §]+§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §@W§:int = 7;
      
      protected static const §[J§:Number = 0.001;
      
      public static const §3!$§:Number = 2000;
      
      public static const §3!i§:Number = 2500;
      
      public static const §%!L§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §[!d§))
         {
            §7D§ = 0;
            while(true)
            {
               §!!^§ = 1;
               while(_loc1_)
               {
                  loop8:
                  while(_loc1_ || §[!d§)
                  {
                     §§push(§§findproperty(§[J§));
                     §§push(§[!,§.§1!8§);
                     if(_loc1_)
                     {
                        §§push(§§pop() / 100);
                     }
                     §§pop().§[J§ = §§pop();
                     loop9:
                     for(; !_loc2_; if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     },§§goto(addr53))
                     {
                        §3!$§ = 2000;
                        loop10:
                        while(!(_loc2_ && _loc1_))
                        {
                           §3!i§ = 2500;
                           loop11:
                           for(; !_loc2_; §%!L§ = 5,if(!(_loc2_ && §[!d§))
                           {
                              continue loop10;
                           })
                           {
                              addr67:
                              if(_loc1_ || _loc1_)
                              {
                                 continue;
                              }
                              addr126:
                              while(true)
                              {
                                 §@W§ = 7;
                                 break loop11;
                                 §§goto(addr67);
                              }
                           }
                           continue loop8;
                           if(!(_loc2_ && §[!d§))
                           {
                              continue loop9;
                           }
                        }
                        while(true)
                        {
                           §]+§ = 4;
                           while(true)
                           {
                              LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                              break loop9;
                              addr53:
                              if(!(_loc2_ && §[!d§))
                              {
                                 return;
                              }
                           }
                           §§goto(addr89);
                        }
                        addr89:
                     }
                     while(_loc1_ || _loc2_)
                     {
                        LEVEL_STATE_VICTORY2_END = 6;
                        §§goto(addr126);
                     }
                     while(true)
                     {
                        §0!O§ = 3;
                        §§goto(addr158);
                        §§goto(addr131);
                     }
                     addr131:
                  }
               }
            }
         }
         while(true)
         {
            §#o§ = 2;
            §§goto(addr163);
         }
      }
      
      public var §#2§:int = 0;
      
      protected var §[P§:int = 0;
      
      public var §3!O§:Number;
      
      protected var §1C§:Number = 0;
      
      protected var §?!H§:Boolean = false;
      
      private var §for §:Number = 0;
      
      public var §7!5§:Number = 0;
      
      protected var §54§:Boolean;
      
      protected var §+1§:Number = 0;
      
      protected var § !H§:Number = 0;
      
      protected var §;F§:Boolean = true;
      
      protected var §1!E§:Integer;
      
      public function §[!d§(param1:LevelMain)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§1!E§ = new Integer();
            do
            {
               super(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            while(true)
            {
               this.§1!E§.assign(0);
               while(true)
               {
                  this.§#2§ = -1;
                  loop2:
                  while(_loc2_)
                  {
                     this.§[P§ = 0;
                     while(true)
                     {
                        this.§1C§ = 0;
                        while(!(_loc1_ && _loc1_))
                        {
                           this.§?!H§ = false;
                           loop5:
                           while(true)
                           {
                              this.§06§(§7D§);
                              addr102:
                              while(_loc2_)
                              {
                                 this.§3!O§ = §3!$§;
                                 continue loop5;
                              }
                              continue loop2;
                           }
                           addr52:
                           if(!(_loc1_ && _loc1_))
                           {
                              loop10:
                              while(true)
                              {
                                 §`s§.objects.setGroundTextureEnabled(true);
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    §§goto(addr102);
                                 }
                                 else
                                 {
                                    while(_loc2_ || this)
                                    {
                                       if(!_loc1_)
                                       {
                                          §§goto(addr52);
                                       }
                                       continue loop10;
                                    }
                                    while(true)
                                    {
                                       §`s§.objects.setDamageEnabled(true);
                                       §§goto(addr43);
                                    }
                                    addr43:
                                    addr75:
                                 }
                                 §§goto(addr81);
                              }
                              return;
                              addr59:
                           }
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §@!?§(true);
               §§goto(addr75);
            }
         }
         §§goto(addr59);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1 = §`s§.update(param1,true);
            while(true)
            {
               this.§`!B§(param1);
               while(_loc3_)
               {
                  this.§[v§(param1);
                  if(_loc3_ || param1)
                  {
                     return;
                     addr56:
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §`!B§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§[P§ != 0)
            {
               if(_loc2_)
               {
                  §`s§.camera.adjustManualScale(this.§[P§ > 0,param1 * §[J§);
               }
            }
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §`s§.clearLevel();
            while(true)
            {
               removeEventListeners();
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§#2§ = -1;
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
         if(!(_loc1_ && _loc2_))
         {
            super.addEventListeners();
         }
      }
      
      public function §"!8§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§`s§.camera.mCurrentCameraSliderLocation < §[!,§.§ !>§)
            {
               if(!_loc1_)
               {
                  §§push(false);
               }
               else
               {
                  while(true)
                  {
                     addr61:
                     loop1:
                     while(true)
                     {
                        §§push(!§`s§.objects.isWorldAtSleep());
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    addr72:
                                    §§push(false);
                                    break;
                                 }
                                 continue loop1;
                              }
                           }
                           §§push(true);
                           if(_loc1_)
                           {
                              break;
                           }
                           if(!(_loc1_ && this))
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 return §§pop();
                              }
                              addr86:
                              return §§pop();
                           }
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr61);
         }
         §§goto(addr72);
      }
      
      public function § !+§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[!,§ = §`s§.camera;
         if(_loc3_)
         {
            §§push(_loc2_.§3+§);
            loop0:
            while(true)
            {
               §§push(0);
               addr132:
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
                     §§push(_loc2_.§3+§);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§3+§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §06§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§%S§(false));
            if(!(_loc3_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  addr493:
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc4_ || this)
                           {
                              §§push(!§§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 addr473:
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                              }
                              loop2:
                              for(; !§§pop(); while(true)
                              {
                                 if(_loc3_ && this)
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop())
                                 {
                                    break;
                                 }
                                 §§goto(addr262);
                              },§§goto(addr291))
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(param1);
                                    while(true)
                                    {
                                       §§push(§7D§);
                                       loop5:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(param1);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§!!^§);
                                             loop7:
                                             while(_loc4_ || param2)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break loop5;
                                                      }
                                                      §`s§.camera.goToBirdView();
                                                   }
                                                   loop46:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr24:
                                                      loop24:
                                                      while(true)
                                                      {
                                                         this.§#2§ = param1;
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  return;
                                                               }
                                                               addr296:
                                                               loop25:
                                                               while(!(_loc4_ || param1))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(!§`s§.objects.mMightyEagleAdded);
                                                                     continue loop2;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §`s§.camera.goToBirdView();
                                                                     continue loop25;
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            addr60:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           §`s§.objects.makePigsSmile(5);
                                                                           break loop24;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     addr445:
                                                                     while(true)
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §`s§.camera.goToCastleView();
                                                                        addr377:
                                                                        while(true)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                     }
                                                                     addr372:
                                                                  }
                                                               }
                                                               addr329:
                                                               while(true)
                                                               {
                                                                  continue loop24;
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      loop23:
                                                      while(!_loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               §§goto(addr24);
                                                            }
                                                            else
                                                            {
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(SoundEngine.§-!h§("LevelFailedPigs1"));
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_ || param2)
                                                                                          {
                                                                                             this.§7!5§ = 1200;
                                                                                             break loop23;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr354:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§7!5§ = 2000;
                                                                                             addr357:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   this.§for § = §%!L§;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ || param1))
                                                                                                      {
                                                                                                         continue loop46;
                                                                                                      }
                                                                                                      §`s§.camera.goToCastleView();
                                                                                                      §§goto(addr329);
                                                                                                   }
                                                                                                   addr335:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§7!5§ = 5000;
                                                                                                      addr389:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §`s§.particles.moveTrailsNewToOld();
                                                                                                         addr384:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr400:
                                                                                                }
                                                                                                §§goto(addr24);
                                                                                             }
                                                                                          }
                                                                                          addr354:
                                                                                       }
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                if(!(_loc3_ && param2))
                                                                                                {
                                                                                                   SoundEngine.§%!V§();
                                                                                                   continue loop28;
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §`s§.slingshot.makeBirdsJumpForJoy();
                                                                                                }
                                                                                                addr261:
                                                                                             }
                                                                                             §§goto(addr322);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr184:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(SoundEngine);
                                                                                                §§push("LevelCompletedBirdsMilitary");
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop() + (1 + int(Math.random() * 2)));
                                                                                                }
                                                                                                §§push(§§pop().§-!h§(§§pop()));
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr145:
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                                 addr94:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr204:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          §§goto(addr24);
                                                                                       }
                                                                                       §§goto(addr377);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§`s§.objects.mMightyEagleAdded);
                                                                                          if(_loc3_ && param1)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr184);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §`s§.camera.goToBirdView();
                                                                                                   §§goto(addr261);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§54§ = false;
                                                                                                      §§goto(addr400);
                                                                                                   }
                                                                                                   addr397:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                             §§goto(addr296);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   this.§7!5§ = 1200;
                                                                                                   §§goto(addr276);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§7!5§ = 1200;
                                                                                                      §§goto(addr322);
                                                                                                   }
                                                                                                   addr319:
                                                                                                }
                                                                                             }
                                                                                             addr271:
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       addr276:
                                                                                       addr250:
                                                                                    }
                                                                                    §§goto(addr322);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr389);
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         §§goto(addr94);
                                                      }
                                                      addr24:
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §`s§.camera.goToCastleView();
                                                            §§goto(addr60);
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(param1);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§#o§);
                                                      loop9:
                                                      while(§§pop() != §§pop())
                                                      {
                                                         §§push(param1);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§0!O§);
                                                            loop11:
                                                            while(§§pop() != §§pop())
                                                            {
                                                               §§push(param1);
                                                               loop12:
                                                               while(!_loc3_)
                                                               {
                                                                  §§push(§]+§);
                                                                  loop13:
                                                                  while(_loc4_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§push(param1);
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(LEVEL_STATE_VICTORY2_END);
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       §§push(param1);
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                          addr268:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(param1);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          §§goto(addr271);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop10;
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                }
                                                §§goto(addr354);
                                             }
                                             continue loop5;
                                          }
                                       }
                                       this.§7!5§ = 2000;
                                       §§goto(addr445);
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr473);
                        }
                     }
                     addr498:
                  }
                  §§goto(addr476);
               }
               §§goto(addr498);
            }
            §§goto(addr493);
         }
         §§goto(addr183);
      }
      
      public function §6!_§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1C§ = Math.max(this.§1C§,param1);
         }
      }
      
      protected function §?f§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§`s§.slingshot.mSlingShotState == LevelSlingshot.§=s§);
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && this))
               {
                  addr56:
                  §§push(§§pop());
                  if(_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        §§pop();
                        addr69:
                        §§push(!§`s§.objects.hasBirds());
                        if(_loc2_ && _loc2_)
                        {
                        }
                        §§goto(addr82);
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               addr82:
               return §§pop();
            }
            §§goto(addr56);
         }
         §§goto(addr69);
      }
      
      public function §[v§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:LevelObject = null;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§3!O§);
            if(_loc6_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§3!O§ = §§pop();
            if(!(_loc5_ && param1))
            {
               §§push(this.§?!H§);
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§1C§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§1C§ = §§pop();
                        while(true)
                        {
                           §§push(this.§1C§);
                           while(true)
                           {
                              §§push(0);
                              addr1346:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§3!O§ = 0;
                                       addr1350:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr1347:
                                 }
                              }
                              addr573:
                              if(_loc5_ && this)
                              {
                                 continue;
                              }
                              §§push(0);
                              while(true)
                              {
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() > §§pop());
                                          while(true)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           this.§7!5§ = 2000;
                                                                        }
                                                                        loop137:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       this.§3!O§ = 0;
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr1697:
                                                                                       if(§`s§.slingshot.updateScoreForRemainingBirds())
                                                                                       {
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             addr1709:
                                                                                             this.§7!5§ = 1000;
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr1714:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§06§(LEVEL_STATE_VICTORY2_END,true);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§%S§(false));
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             loop17:
                                                                                             while(!(_loc5_ && this))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§3!O§ = §3!$§;
                                                                                                            loop21:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§`s§.objects.isWorldAtSleep()));
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  loop23:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        addr1295:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop27:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§?!H§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   loop32:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         loop33:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            while(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§1C§);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 addr1251:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    loop41:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(!§`s§.objects.isPigsAlive());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             addr1127:
                                                                                                                                                                                             while(_loc6_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                loop44:
                                                                                                                                                                                                while(_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                   while(!(_loc5_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            while(_loc6_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(!§`s§.objects.mSardineCanAdded);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                           while(!_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1116:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             addr1117:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(!§`s§.objects.mMightyEagleAdded);
                                                                                                                                                                                                                                                addr1076:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1116:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§?f§());
                                                                                                                                                                                                                                                loop54:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!§`s§.objects.mMightyEagleAdded)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(!§`s§.objects.mSardineCanAdded);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc5_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              this.§=!C§(§@W§);
                                                                                                                                                                                                                                                                              break loop137;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              this.§1C§ = 15000;
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.§?!H§ = true;
                                                                                                                                                                                                                                                                                 loop66:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr947:
                                                                                                                                                                                                                                                                                       loop103:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§%S§(false));
                                                                                                                                                                                                                                                                                          while(_loc6_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(!_loc5_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(!_loc5_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Boolean(§`s§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop23;
                                                                                                                                                                                                                                                                                                      addr1049:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §`s§.gameOver();
                                                                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr918:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                                                                                                                         §§push(this.§7!5§);
                                                                                                                                                                                                                                                                                                         if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() - param1);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().§7!5§ = §§pop();
                                                                                                                                                                                                                                                                                                         addr932:
                                                                                                                                                                                                                                                                                                         while(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc5_ && this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(this.§7!5§);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                                                                  addr906:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           this.§7!5§ = 0;
                                                                                                                                                                                                                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1676);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr907:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(this.§#2§);
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§0!O§);
                                                                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr885:
                                                                                                                                                                                                                                                                                                                              if(_loc5_ && _loc3_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break loop137;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §`s§.updatePigAnimations(param1);
                                                                                                                                                                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(!§`s§.camera.isOnCastleView());
                                                                                                                                                                                                                                                                                                                                    continue loop54;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop66;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1084:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop103;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(this.§#2§);
                                                                                                                                                                                                                                                                                                                              if(_loc6_ || param1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr1668:
                                                                                                                                                                                                                                                                                                                              if(§§pop() == LEVEL_STATE_VICTORY1_SLINGSHOT)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1676:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1721);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1397);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§goto(addr1697);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr1668);
                                                                                                                                                                                                                                                                                                                           §§push(this.§#2§);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1721);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1721);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1202);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            this.§3!O§ = §3!$§;
                                                                                                                                                                                                                                                                                                            §§goto(addr1012);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr918:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1676);
                                                                                                                                                                                                                                                                                                   §§goto(addr1056);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1032:
                                                                                                                                                                                                                                                                                                      this.§=!C§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr1268);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr918);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr967);
                                                                                                                                                                                                                                                                           §§goto(addr1032);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!(_loc6_ || _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr234);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr947);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1171);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1049);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr947);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1079);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1176);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1265:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1266);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop44;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1101:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1116);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1255);
                                                                                                                                                                                                                  while(_loc6_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr396);
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1243);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop21;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1101);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop17;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                break loop32;
                                                                                                                                                                                                §§goto(addr1127);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(!(_loc5_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1028);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1253);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1290:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1251);
                                                                                                                                                            }
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                      if(_loc5_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr324);
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1338);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1290);
                                                                                                                                                while(_loc6_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1265);
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr1299:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1251);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(_loc5_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§goto(addr854);
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr1234);
                                                                                                                        }
                                                                                                                        §§goto(addr854);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr918);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop15;
                                                                                             }
                                                                                             if(!(_loc6_ || this))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr92);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr1721:
                                                                                    if(this.§7!5§ <= 0)
                                                                                    {
                                                                                       addr1680:
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          §§goto(addr1697);
                                                                                       }
                                                                                       §§goto(addr1709);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr1244);
                                                                              }
                                                                              §§goto(addr1183);
                                                                           }
                                                                           §§goto(addr885);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§goto(addr947);
                                                                           }
                                                                           §§goto(addr1178);
                                                                           §§goto(addr885);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr481);
                                                                     }
                                                                     §§goto(addr487);
                                                                  }
                                                               }
                                                               §§goto(addr1295);
                                                            }
                                                            §§goto(addr669);
                                                         }
                                                      }
                                                      §§goto(addr1299);
                                                   }
                                                   §§goto(addr1172);
                                                }
                                                §§goto(addr1127);
                                             }
                                             §§goto(addr819);
                                          }
                                       }
                                       §§goto(addr1333);
                                    }
                                    §§goto(addr906);
                                 }
                                 §§goto(addr748);
                              }
                           }
                           if(_loc5_ && param1)
                           {
                              continue;
                           }
                           §§goto(addr463);
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr1332);
                  }
                  while(true)
                  {
                     if(_loc5_ && param1)
                     {
                        continue loop0;
                     }
                     _loc3_ = §§pop();
                     §§goto(addr771);
                  }
               }
            }
            §§goto(addr1397);
         }
         §§goto(addr876);
      }
      
      protected function §=!C§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§?!H§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               while(true)
               {
                  this.§?!H§ = true;
                  addr167:
                  while(true)
                  {
                  }
               }
               addr164:
            }
            loop1:
            while(true)
            {
               §§push(new Date().time - §`s§.slingshot.timeOfLastBirdShot);
               loop2:
               while(true)
               {
                  §§push(6000);
                  loop3:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop4:
                        while(!§`s§.slingshot.mDragging)
                        {
                           loop5:
                           while(true)
                           {
                              if(§`s§.objects.isWorldAtSleep())
                              {
                                 while(true)
                                 {
                                    this.§1C§ = Math.min(this.§1C§,3500);
                                    addr100:
                                    while(_loc4_ || _loc3_)
                                    {
                                       if(_loc3_ && param1)
                                       {
                                          §§goto(addr151);
                                       }
                                    }
                                    continue loop4;
                                 }
                                 addr92:
                              }
                              while(true)
                              {
                                 §§push(this.§1C§);
                                 if(!_loc3_)
                                 {
                                    §§push(0);
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    if(§§pop() <= §§pop())
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(!(_loc3_ && param2))
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc4_ || param1))
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             if(!_loc3_)
                                             {
                                                this.§06§(param1,param2);
                                                addr66:
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr25);
                                                   }
                                                   break loop4;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr164);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr92);
                                          }
                                          §§goto(addr100);
                                       }
                                       §§goto(addr66);
                                    }
                                 }
                                 continue loop2;
                                 addr25:
                                 return;
                              }
                              continue loop1;
                           }
                        }
                        return;
                     }
                     addr151:
                     return;
                  }
               }
            }
         }
         §§goto(addr167);
      }
      
      public function §%S§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§#2§);
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop9:
                                       while(_loc2_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop10:
                                          while(!_loc3_)
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
                                                      §§push(this.§#2§);
                                                      loop13:
                                                      while(_loc2_)
                                                      {
                                                         §§push(§@W§);
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() == §§pop());
                                                               while(_loc2_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop22:
                                                                  while(_loc2_ || _loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_ || this)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      break loop25;
                                                                                                   }
                                                                                                   §§push(this.§7!5§ <= 0);
                                                                                                   if(_loc2_ || param1)
                                                                                                   {
                                                                                                      if(_loc2_ || _loc2_)
                                                                                                      {
                                                                                                         addr207:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                            addr53:
                                                                                                            if(!(_loc2_ || _loc3_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            if(!(_loc3_ && param1))
                                                                                                            {
                                                                                                               addr73:
                                                                                                               return Boolean(§§pop());
                                                                                                               addr72:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               addr235:
                                                                                                            }
                                                                                                         }
                                                                                                         while(_loc2_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr211:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr140:
                                                                                                                     addr142:
                                                                                                                     §§push(param1);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr210:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr72);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                         addr207:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr255:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         break loop26;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               break loop26;
                                                                                                            }
                                                                                                            §§push(this.§#2§);
                                                                                                            if(_loc3_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(_loc2_ || param1)
                                                                                                                     {
                                                                                                                        §§goto(addr46);
                                                                                                                     }
                                                                                                                     §§goto(addr73);
                                                                                                                  }
                                                                                                                  §§goto(addr142);
                                                                                                               }
                                                                                                               §§goto(addr73);
                                                                                                            }
                                                                                                            §§goto(addr189);
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop26;
                                                                                                         addr46:
                                                                                                         if(!(_loc2_ || param1))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr53);
                                                                                                      }
                                                                                                      addr134:
                                                                                                   }
                                                                                                   §§goto(addr73);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr211);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§#2§);
                                                                                                break loop13;
                                                                                             }
                                                                                             addr256:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                             addr203:
                                                                                          }
                                                                                          §§goto(addr207);
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    §§goto(addr73);
                                                                                 }
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            addr234:
                                                            while(true)
                                                            {
                                                               §§goto(addr235);
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr203);
                                             }
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              §§goto(addr255);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr256);
      }
      
      public function §9x§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§#2§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc2_)
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr93);
                  }
                  addr68:
                  §§push(§§pop());
                  if(_loc2_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        §§pop();
                        addr85:
                        §§push(this.§#2§ == §@W§);
                        if(!(_loc1_ && _loc2_))
                        {
                           addr93:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§goto(addr93);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr85);
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(param1.delta != 0)
            {
               if(!(_loc3_ && this))
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
            §§push(this.§;F§);
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
                              while(true)
                              {
                                 §§pop();
                                 addr302:
                                 while(true)
                                 {
                                    §§push(!§`s§.mReadyToRun);
                                    addr287:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                              }
                              addr301:
                           }
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(Boolean(§`s§.slingshot.mDragging));
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
                                                if(!§§pop())
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§`s§.camera.mDragging));
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            loop32:
                                                            while(!§§pop())
                                                            {
                                                               §§push(this.§#2§);
                                                               loop33:
                                                               while(true)
                                                               {
                                                                  §§push(§]+§);
                                                                  loop34:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     loop35:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       if(_loc2_ && _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop18:
                                                                                       for(; !_loc2_; loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(_loc2_ && _loc2_)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             loop24:
                                                                                             while(_loc3_)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§#2§);
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      addr64:
                                                                                                      §§push(§!!^§);
                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop34;
                                                                                                         }
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc2_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               if(!(_loc3_ || _loc2_))
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(!(_loc2_ && param1))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr108:
                                                                                                                     while(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§goto(addr290);
                                                                                                                              }
                                                                                                                              §§push(!§`s§.isPlayingReplay());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc2_ && this)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 if(!(_loc3_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §`s§.changeReplaySpeed(param1);
                                                                                                                                    if(!(_loc2_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc2_ && this))
                                                                                                                                       {
                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             break loop25;
                                                                                                                                          }
                                                                                                                                          break loop32;
                                                                                                                                       }
                                                                                                                                       addr151:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                          §`s§.camera.adjustManualScale(param1);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          break loop25;
                                                                                                                                       }
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              loop20:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§#2§);
                                                                                                                                 addr165:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop33;
                                                                                                                                    }
                                                                                                                                    §§push(§0!O§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       addr170:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop24;
                                                                                                                                          }
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             if(_loc3_ || param1)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             continue loop35;
                                                                                                                                          }
                                                                                                                                          addr259:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop35;
                                                                                                                                       §§goto(addr64);
                                                                                                                                    }
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr151);
                                                                                                                     }
                                                                                                                     break loop25;
                                                                                                                  }
                                                                                                                  addr107:
                                                                                                               }
                                                                                                               §§goto(addr124);
                                                                                                            }
                                                                                                            §§goto(addr170);
                                                                                                         }
                                                                                                         §§goto(addr108);
                                                                                                      }
                                                                                                      §§goto(addr169);
                                                                                                   }
                                                                                                   §§goto(addr165);
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr287);
                                                                                          }
                                                                                          §§goto(addr107);
                                                                                       },continue loop3)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                           §§goto(addr302);
                                                                           addr238:
                                                                        }
                                                                        §§goto(addr259);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr20);
                                                            }
                                                            else
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr302);
                                                            }
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                §§goto(addr225);
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
            }
         }
         addr290:
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §!!=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[P§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(_loc5_ || param2)
         {
            §§push(this.§;F§);
            if(_loc5_ || param1)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc6_ && param2))
               {
                  §§goto(addr44);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(!(_loc6_ && param1))
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
                        §§push(§%c§.§<p§());
                        loop2:
                        while(true)
                        {
                           §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(this.§%S§(false));
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(!§`s§.isPlayingReplay());
                                       if(_loc5_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             loop6:
                                             for(; _loc5_; if(!(_loc5_ || param2))
                                             {
                                                continue;
                                             },if(_loc6_ && this)
                                             {
                                                continue loop3;
                                             },this.§54§ = false,§§goto(addr124))
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr256);
                                                }
                                                §§push(Boolean(§`s§.activeObject));
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc5_ || param1))
                                                                  {
                                                                     §`s§.resetReplaySpeed();
                                                                     break loop5;
                                                                  }
                                                                  addr349:
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  loop10:
                                                                  while(_loc5_ || param1)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#2§ == §#o§);
                                                                        if(_loc6_ && param1)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        addr228:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               addr99:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     §`s§.activatePowerup();
                                                                     addr124:
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        §§goto(addr124);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr124:
                                                                  }
                                                                  continue loop6;
                                                                  return;
                                                               }
                                                               _loc4_ = §`s§.screenToBox2D(param1,param2);
                                                               if(!_loc6_)
                                                               {
                                                                  if(§`s§.slingshot.canStartDragging(_loc4_))
                                                                  {
                                                                     addr334:
                                                                     §`s§.slingshot.startDragging();
                                                                     this.§06§(§!!^§);
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        §§goto(addr334);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §`s§.camera.startDragging(param1,param2);
                                                                     addr303:
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr99);
                                                         addr175:
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                }
                                             }
                                             §§goto(addr244);
                                          }
                                          §`s§.camera.startDragging(param1,param2);
                                          if(_loc5_)
                                          {
                                             §§goto(addr349);
                                          }
                                          break;
                                          §§goto(addr349);
                                       }
                                       §§goto(addr223);
                                    }
                                    return;
                                 }
                                 addr244:
                                 return;
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr175);
                              }
                           }
                        }
                     }
                  }
                  addr256:
                  return;
               }
            }
            §§goto(addr238);
         }
         addr44:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!_loc4_)
         {
            §§push(this.§;F§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(§%c§.§'n§());
                     if(!_loc4_)
                     {
                        if(!(_loc5_ || _loc3_))
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        §§pop();
                        while(this.§#2§ == §7D§)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(!(_loc5_ || param1))
                              {
                                 break loop1;
                              }
                              this.§06§(§!!^§);
                              if(!(_loc5_ || this))
                              {
                                 return;
                              }
                              addr248:
                           }
                           if(!(_loc4_ && param2))
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                        }
                        if(§`s§.slingshot.mDragging)
                        {
                           if(!(_loc4_ && this))
                           {
                              _loc3_ = §`s§.screenToBox2D(param1,param2);
                              if(!_loc4_)
                              {
                                 §`s§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                 loop6:
                                 while(true)
                                 {
                                    if(!§`s§.slingshot.canShootTheBird())
                                    {
                                       §`s§.slingshot.cancelDragging();
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(true)
                                             {
                                                addr169:
                                                if(§`s§.camera.mDragging)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(!isNaN(param1));
                                                      if(_loc5_ || param2)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr200:
                                                            §§push(§§pop());
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  addr212:
                                                                  §§pop();
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     §§push(!isNaN(param2));
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr256:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              addr264:
                                                                              §`s§.camera.dragToNewPoint(param1,param2);
                                                                           }
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              addr225:
                                                                              while(true)
                                                                              {
                                                                                 §`s§.camera.stopDragging();
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    break loop3;
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                        §§goto(addr225);
                                                                     }
                                                                     §§goto(addr256);
                                                                     addr220:
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                }
                                                §§goto(addr248);
                                             }
                                          }
                                          else
                                          {
                                             addr152:
                                             §`s§.slingshot.shoot();
                                             while(true)
                                             {
                                             }
                                             addr157:
                                          }
                                          while(true)
                                          {
                                             this.§06§(§#o§);
                                             continue loop6;
                                          }
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr200);
                  }
               }
               return;
            }
         }
         §§goto(addr80);
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(_loc4_)
         {
            §§push(this.§;F§);
            if(_loc4_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc4_ || this)
               {
                  return;
               }
            }
            else if(§`s§.slingshot.mDragging)
            {
               if(_loc4_)
               {
                  _loc3_ = §`s§.screenToBox2D(param1,param2);
                  if(!_loc5_)
                  {
                     §`s§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(_loc4_)
                     {
                        addr100:
                        this.§+1§ = param1;
                        if(_loc4_ || this)
                        {
                           this.§ !H§ = param2;
                        }
                     }
                  }
                  return;
               }
               addr93:
               §`s§.camera.dragToNewPoint(param1,param2);
            }
            else if(§`s§.camera.mDragging)
            {
               if(_loc4_)
               {
                  §§goto(addr93);
               }
            }
         }
         §§goto(addr100);
      }
      
      public function §"F§() : Point
      {
         return new Point(this.§+1§,this.§ !H§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§1!E§.assign(this.§1!E§.getValue() + param1);
            while(true)
            {
               this.§6!_§(§3!i§);
               loop1:
               while(this.§#2§ == §]+§)
               {
                  while(true)
                  {
                     this.§7!5§ = 2000;
                     addr74:
                     while(_loc2_)
                     {
                     }
                     continue loop1;
                  }
               }
               addr24:
               addr52:
               return;
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr24);
            }
         }
         while(true)
         {
            this.§for § = §%!L§;
            if(!(_loc3_ && _loc3_))
            {
               if(_loc2_)
               {
                  §§goto(addr52);
               }
               §§goto(addr71);
            }
            §§goto(addr74);
         }
      }
      
      override public function getScore() : int
      {
         return this.§1!E§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§`S§.§[o§.objects.mMightyEagleAdded);
            if(_loc3_ || _loc2_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  addr44:
                  §§push(0);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  §§push(LevelManager.§1n§(LevelManager.§1m§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
            §§goto(addr58);
         }
         §§goto(addr44);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§;F§;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;F§ = param1;
         }
      }
   }
}
