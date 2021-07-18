package §]§
{
   import §#";§.§0"#§;
   import §%!0§.§,4§;
   import §%!0§.§3"!§;
   import §&!P§.§&!^§;
   import §&!P§.§0!Z§;
   import §&!P§.§9`§;
   import §&!P§.§``§;
   import §,!g§.§"!P§;
   import §,P§.§'_§;
   import §6]§.§8!W§;
   import §<!1§.§9!=§;
   import §<i§.§`!r§;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §?h§ extends §`!7§
   {
      
      public static const §@j§:int = 0;
      
      public static const §%a§:int = 1;
      
      public static const §6!>§:int = 2;
      
      public static const §4_§:int = 3;
      
      public static const §8!K§:int = 4;
      
      public static const LEVEL_STATE_VICTORY1_SLINGSHOT:int = 5;
      
      public static const LEVEL_STATE_VICTORY2_END:int = 6;
      
      public static const §^!>§:int = 7;
      
      protected static const §[u§:Number = 0.001;
      
      public static const §+!D§:Number = 2000;
      
      public static const §"!e§:Number = 2500;
      
      public static const §,!U§:int = 5;
      
      private static var §^!y§:Boolean;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §?h§))
         {
            §@j§ = 0;
            while(true)
            {
               §%a§ = 1;
               loop1:
               while(true)
               {
                  §6!>§ = 2;
                  addr150:
                  while(true)
                  {
                     §4_§ = 3;
                     while(true)
                     {
                        §8!K§ = 4;
                        while(_loc2_)
                        {
                           LEVEL_STATE_VICTORY1_SLINGSHOT = 5;
                           while(!_loc1_)
                           {
                              LEVEL_STATE_VICTORY2_END = 6;
                              while(_loc2_)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public var §3!9§:int = 0;
      
      protected var §[e§:int = 0;
      
      public var §`"+§:Number;
      
      protected var §^O§:Number = 0;
      
      protected var §#!2§:Boolean = false;
      
      private var §!!4§:Number = 0;
      
      public var §>v§:Number = 0;
      
      protected var §>c§:Number = 0;
      
      protected var §-<§:Number = 0;
      
      protected var §case §:Boolean = true;
      
      protected var §,!R§:§9!=§;
      
      public function §?h§(param1:§,4§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§,!R§ = new §9!=§();
            do
            {
               super(param1);
            }
            while(!_loc2_);
            
         }
      }
      
      public static function §^I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §^!y§ = param1;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            addr144:
            while(true)
            {
               this.§,!R§.§2">§(0);
            }
            addr144:
         }
         while(true)
         {
            this.§3!9§ = -1;
            while(true)
            {
               this.§[e§ = 0;
               loop3:
               while(true)
               {
                  this.§^O§ = 0;
                  addr115:
                  while(true)
                  {
                     this.§#!2§ = false;
                     continue loop3;
                  }
               }
               if(!(_loc2_ || this))
               {
                  continue;
               }
               if(!_loc1_)
               {
                  §;!;§(true);
                  §§goto(addr75);
               }
               §§goto(addr144);
            }
            if(_loc1_ && _loc1_)
            {
               continue;
            }
            §§goto(addr60);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1 = §`!G§.update(param1,true);
         }
         do
         {
            this.§9X§(param1);
            do
            {
               this.§@^§(param1);
            }
            while(_loc3_);
            
         }
         while(_loc3_);
         
      }
      
      private function §9X§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§[e§ != 0)
            {
               if(_loc2_ || _loc3_)
               {
                  §`!G§.camera.adjustManualScale(this.§[e§ > 0,param1 * §[u§);
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
            §`!G§.clearLevel();
            while(true)
            {
               removeEventListeners();
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            this.§3!9§ = -1;
            if(_loc2_ || _loc2_)
            {
               if(!(_loc1_ && _loc2_))
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
         if(_loc2_ || _loc2_)
         {
            super.addEventListeners();
         }
      }
      
      public function §<G§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§`!G§.camera.mCurrentCameraSliderLocation < §"!P§.§]"?§)
            {
               if(_loc1_ || _loc2_)
               {
                  return false;
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr31:
                     while(!§`!G§.objects.isWorldAtSleep())
                     {
                        if(!(_loc1_ || _loc2_))
                        {
                           break;
                        }
                        addr64:
                        continue loop0;
                     }
                     §§push(true);
                     if(_loc1_ || _loc1_)
                     {
                        return §§pop();
                     }
                     addr61:
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr31);
         }
         §§goto(addr64);
      }
      
      public function §^l§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"!P§ = §`!G§.camera;
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_.§;">§);
            loop0:
            while(true)
            {
               §§push(0);
               addr119:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     addr29:
                     return;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(_loc2_.§;">§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§;">§ = §§pop();
                     continue loop0;
                     loop8:
                     while(true)
                     {
                        if(_loc3_ && _loc3_)
                        {
                           continue loop2;
                        }
                        addr115:
                        if(§`!G§.slingshot.birdsAvailable)
                        {
                           loop5:
                           for(; !_loc3_; §§goto(addr115))
                           {
                              while(true)
                              {
                                 _loc2_.§>#§();
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       continue loop8;
                                    }
                                    if(!_loc3_)
                                    {
                                       addr75:
                                       if(_loc4_ || param1)
                                       {
                                          break;
                                       }
                                       addr102:
                                       while(true)
                                       {
                                          if(!this.§<G§())
                                          {
                                             _loc2_.§;">§ = §"!P§.§'U§ / 2;
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr29);
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr75);
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc2_.§;">§ = -1;
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr29);
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §'!V§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§,!F§(false));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
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
                              §§push(§@j§);
                              loop7:
                              while(§§pop() != §§pop())
                              {
                                 §§push(param1);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§%a§);
                                    loop9:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(param1);
                                       loop10:
                                       while(!_loc3_)
                                       {
                                          §§push(§6!>§);
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   break;
                                                }
                                                §§push(param1);
                                                loop12:
                                                while(_loc4_ || param2)
                                                {
                                                   §§push(§4_§);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            break;
                                                         }
                                                         §§push(param1);
                                                         while(!_loc3_)
                                                         {
                                                            §§push(§8!K§);
                                                            continue loop13;
                                                            loop16:
                                                            while(_loc4_ || param1)
                                                            {
                                                               §§push(LEVEL_STATE_VICTORY2_END);
                                                               loop17:
                                                               while(§§pop() != §§pop())
                                                               {
                                                                  §§push(param1);
                                                                  loop18:
                                                                  while(!_loc3_)
                                                                  {
                                                                     §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(param1);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§^!>§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(_loc3_ && param1)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       §§goto(addr136);
                                                                                    }
                                                                                    §§goto(addr24);
                                                                                    continue loop17;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     §§goto(addr214);
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr352);
                                                   }
                                                   §§goto(addr324);
                                                }
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                          addr355:
                                          if(_loc4_)
                                          {
                                             §^I§(false);
                                             this.§>v§ = 5000;
                                             §`!G§.particles.moveTrailsNewToOld();
                                             addr24:
                                             this.§3!9§ = param1;
                                             addr339:
                                             addr360:
                                             addr344:
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr232:
                                                         if(_loc4_)
                                                         {
                                                            §`!G§.camera.goToBirdView();
                                                            addr189:
                                                            §§goto(addr24);
                                                            addr237:
                                                         }
                                                         addr298:
                                                         this.§>v§ = 2000;
                                                         addr301:
                                                         if(_loc4_ || this)
                                                         {
                                                            this.§!!4§ = §,!U§;
                                                            addr273:
                                                            if(!_loc3_)
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §`!G§.camera.goToCastleView();
                                                                  §§goto(addr24);
                                                                  addr268:
                                                               }
                                                               §§goto(addr24);
                                                               addr370:
                                                            }
                                                            §§goto(addr355);
                                                         }
                                                         addr324:
                                                         §`!G§.camera.goToCastleView();
                                                         addr327:
                                                         if(_loc3_ && param2)
                                                         {
                                                         }
                                                         §§goto(addr24);
                                                         addr378:
                                                      }
                                                      if(!(_loc3_ && this))
                                                      {
                                                         return;
                                                         addr43:
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr177:
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §`!G§.camera.goToBirdView();
                                                               §`!G§.slingshot.makeBirdsJumpForJoy();
                                                               addr169:
                                                               if(!_loc3_)
                                                               {
                                                                  addr141:
                                                                  §0"#§.§9"2§("LevelCompletedBirdsMilitary" + (1 + int(Math.random() * 2)));
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        §§goto(addr24);
                                                                     }
                                                                     addr214:
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!(_loc3_ && param2))
                                                                        {
                                                                           this.§>v§ = 1200;
                                                                           if(!§`!G§.objects.mMightyEagleAdded)
                                                                           {
                                                                              §§goto(addr177);
                                                                           }
                                                                           §§goto(addr141);
                                                                           addr226:
                                                                        }
                                                                        §§goto(addr273);
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           this.§>v§ = 1200;
                                                                           if(!§`!G§.objects.mMightyEagleAdded)
                                                                           {
                                                                              §§goto(addr232);
                                                                           }
                                                                           §§goto(addr189);
                                                                           addr263:
                                                                        }
                                                                        break loop7;
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                                  §§goto(addr169);
                                                               }
                                                               §§goto(addr268);
                                                               addr188:
                                                            }
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(param2);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               addr420:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop3;
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr360);
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                addr93:
                                                if(_loc4_ || param2)
                                                {
                                                   §`!G§.camera.goToCastleView();
                                                   addr79:
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §`!G§.objects.makePigsSmile(5);
                                                         addr49:
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr24);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               addr136:
                                                               if(_loc4_)
                                                               {
                                                                  §0"#§.§4"#§();
                                                                  §0"#§.§9"2§("LevelFailedPigs1");
                                                                  addr105:
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        this.§>v§ = 1200;
                                                                        §§goto(addr93);
                                                                     }
                                                                     break loop9;
                                                                  }
                                                                  addr140:
                                                                  §§goto(addr140);
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr105);
                                                         }
                                                         §§goto(addr79);
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr49);
                                          }
                                          break loop4;
                                       }
                                       continue loop6;
                                    }
                                    §`!G§.camera.goToBirdView();
                                    §§goto(addr370);
                                 }
                              }
                              this.§>v§ = 2000;
                              §§goto(addr378);
                           }
                        }
                     }
                     return;
                     addr400:
                  }
                  §§goto(addr420);
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §#!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§>v§ = 2000;
            while(true)
            {
               this.§#!2§ = false;
               loop2:
               while(!(_loc1_ && this))
               {
                  this.§'!V§(§?h§.§%a§,true);
                  if(!(_loc1_ && this))
                  {
                     addr52:
                     if(!(_loc2_ || _loc1_))
                     {
                        while(true)
                        {
                           this.§^O§ = 2000;
                           continue loop2;
                           §§goto(addr52);
                        }
                        addr86:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §"!T§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^O§ = Math.max(this.§^O§,param1);
         }
      }
      
      protected function §,@§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§`!G§.slingshot.mSlingShotState == §3"!§.§3"4§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr50:
                     §§pop();
                     return !§`!G§.objects.hasBirds();
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §@^§(param1:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:§``§ = null;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         if(!_loc8_)
         {
            §§push(this);
            §§push(this.§`"+§);
            if(!(_loc8_ && _loc2_))
            {
               §§push(§§pop() - param1);
            }
            §§pop().§`"+§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§#!2§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§^O§);
                        if(_loc9_ || this)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§^O§ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§^O§);
                           if(!(_loc8_ && param1))
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
                                       this.§`"+§ = 0;
                                       loop6:
                                       while(true)
                                       {
                                          addr1145:
                                          while(true)
                                          {
                                             §§push(this.§`"+§);
                                             if(_loc9_)
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
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(this.§,!F§(false));
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     addr904:
                                                                     if(_loc8_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     addr914:
                                                                     if(§§pop())
                                                                     {
                                                                        addr915:
                                                                        if(_loc9_)
                                                                        {
                                                                           §§pop();
                                                                           addr918:
                                                                           if(§`!G§.objects.mMightyEagleTimer > 5500)
                                                                           {
                                                                              addr855:
                                                                              this.§1Z§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                              addr818:
                                                                              loop37:
                                                                              while(true)
                                                                              {
                                                                                 addr791:
                                                                                 §§push(this.§,!F§(false));
                                                                                 if(!(_loc8_ && _loc3_))
                                                                                 {
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr806:
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §`!G§.gameOver();
                                                                                             addr810:
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                §§push(this.§^O§);
                                                                                                if(!(_loc8_ && this))
                                                                                                {
                                                                                                   addr1054:
                                                                                                   §§push(6000);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr1061:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc9_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr1071:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr1072:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(!§`!G§.objects.isPigsAlive());
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1071:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr1036:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§push(this.§#!2§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr1023:
                                                                                                                                    §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§,@§());
                                                                                                                                       addr994:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr1024:
                                                                                                                                 }
                                                                                                                                 loop46:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr996:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr997:
                                                                                                                                       if(!(_loc9_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§`"+§ = §+!D§;
                                                                                                                                             addr1144:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§`!G§.objects.isWorldAtSleep()));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc2_ = §§pop();
                                                                                                                                                   addr1133:
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   if(_loc9_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr1115:
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      while(!(_loc8_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr1101:
                                                                                                                                                               §§push(!this.§#!2§);
                                                                                                                                                               if(!!this.§#!2§)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr1105:
                                                                                                                                                                     §§push(this.§^O§);
                                                                                                                                                                     addr1076:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr1077:
                                                                                                                                                                        §§push(§§pop() > 0);
                                                                                                                                                                     }
                                                                                                                                                                     addr977:
                                                                                                                                                                     if(_loc8_ && this)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(!§`!G§.objects.mSardineCanAdded);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr947:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr948:
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       addr952:
                                                                                                                                                                                       if(_loc9_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop12;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(!§`!G§.objects.mMightyEagleAdded);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr925);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop46;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop13;
                                                                                                                                                                                    addr951:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr924);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr974);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr1125:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1079);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1115);
                                                                                                                                                      }
                                                                                                                                                      continue loop10;
                                                                                                                                                      addr1117:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1125);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       this.§^O§ = 15000;
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr962:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 this.§#!2§ = true;
                                                                                                                                 addr990:
                                                                                                                                 §§goto(addr962);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1082);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr1072);
                                                                                                               }
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  this.§^O§ = 6000;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§#!2§ = true;
                                                                                                                  addr1029:
                                                                                                                  §§goto(addr962);
                                                                                                               }
                                                                                                               addr1042:
                                                                                                            }
                                                                                                            §§goto(addr1117);
                                                                                                         }
                                                                                                         §§goto(addr1091);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1071);
                                                                                                }
                                                                                                §§goto(addr1076);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr985);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr947);
                                                                                 }
                                                                                 addr925:
                                                                                 §§goto(addr1505);
                                                                              }
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§>v§);
                                                                                 if(!(_loc8_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() - param1);
                                                                                 }
                                                                                 §§pop().§>v§ = §§pop();
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       §§push(this.§>v§);
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§>v§ = 0;
                                                                                                   loop21:
                                                                                                   while(_loc9_ || _loc2_)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§3!9§);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§push(§4_§);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(§§pop() != §§pop())
                                                                                                                  {
                                                                                                                     §§push(this.§3!9§);
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§8!K§);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(§§pop() == §§pop())
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(this.§3!9§);
                                                                                                                           loop24:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§@j§);
                                                                                                                              addr204:
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc9_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§>v§);
                                                                                                                                                      if(_loc9_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop8;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc8_ && this)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop19;
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc8_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc8_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§'!V§(§%a§);
                                                                                                                                                                                 addr289:
                                                                                                                                                                                 if(!(_loc8_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr114:
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1105);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr472:
                                                                                                                                                                                 if(!(_loc8_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr413:
                                                                                                                                                                                    loop27:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr353:
                                                                                                                                                                                       §§push(!§`!G§.camera.isOnCastleView());
                                                                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc8_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr368:
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(!(_loc8_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc9_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         for(; !(_loc8_ && this); if(!(_loc9_ || _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         },if(!(_loc8_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr319:
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc8_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§'!V§(§%a§);
                                                                                                                                                                                                                  addr331:
                                                                                                                                                                                                                  if(!(_loc8_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc8_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr198:
                                                                                                                                                                                                                           break loop25;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop5;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                           §§push(this.§!!4§);
                                                                                                                                                                                                                           if(!(_loc8_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - 1);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().§!!4§ = §§pop();
                                                                                                                                                                                                                           §§goto(addr472);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        addr515:
                                                                                                                                                                                                                        this.§`"+§ = 0;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr990);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr876);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        §§goto(addr331);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr836:
                                                                                                                                                                                                                     if(!(_loc8_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§`"+§ = §+!D§;
                                                                                                                                                                                                                        addr846:
                                                                                                                                                                                                                        §§goto(addr818);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1072);
                                                                                                                                                                                                                     addr419:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr876);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1488);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr198);
                                                                                                                                                                                                         },§§goto(addr1115))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               addr405:
                                                                                                                                                                                                               if(_loc9_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr304:
                                                                                                                                                                                                                  §§push(§`!G§.camera.mCurrentAction != §"!P§.§9!g§);
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr952);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1101);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1092);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr319);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1061);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr914);
                                                                                                                                                                                             }
                                                                                                                                                                                             loop31:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop32:
                                                                                                                                                                                                   while(_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      if(_loc9_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr495:
                                                                                                                                                                                                               §§push(this.§!!4§);
                                                                                                                                                                                                               if(_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop18;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr502:
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§>v§ = 2000;
                                                                                                                                                                                                                              addr513:
                                                                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr515);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr828);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(!(_loc8_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop21;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc8_ && param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(Boolean(§`!G§.objects.hasBirds()));
                                                                                                                                                                                                                                    if(!(_loc8_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                                                                                                                          if(_loc9_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc8_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc8_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr518:
                                                                                                                                                                                                                                                   §§push(Boolean(_loc3_));
                                                                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop32;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         continue loop31;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr996);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr893);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr931);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr846);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break loop25;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr701:
                                                                                                                                                                                                                                       if(_loc9_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                          addr709:
                                                                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr645:
                                                                                                                                                                                                                                             §§push(§`!G§.camera.mCurrentAction == §"!P§.§9!g§);
                                                                                                                                                                                                                                             if(_loc9_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                                                                                                                   break loop27;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop11;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1076);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr806);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1101);
                                                                                                                                                                                                                                       §§goto(addr1078);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr645);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr918);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr673:
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop20;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop22;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1029);
                                                                                                                                                                                                                              addr579:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1029);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr503:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr431:
                                                                                                                                                                                                                        if(§'_§.§=M§.objects.mMightyEagleAdded)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop27;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc8_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§'!V§(§%a§);
                                                                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc8_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr997);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr858);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1488);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1520);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1520);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr501:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1054);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1133);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr709);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1520);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr915);
                                                                                                                                                                                                   addr537:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr501);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1083);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr655:
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr657:
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§'!V§(§%a§);
                                                                                                                                                                                                   §§goto(addr673);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr855);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr825);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr673);
                                                                                                                                                                                       }
                                                                                                                                                                                       break loop22;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1023);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr503);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1488);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr114);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1077);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr498);
                                                                                                                                                               }
                                                                                                                                                               addr1491:
                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop17;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1520);
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1046);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr495);
                                                                                                                                                      }
                                                                                                                                                      break loop3;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr810);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr721:
                                                                                                                                                   §`!G§.updatePigAnimations(param1);
                                                                                                                                                   addr683:
                                                                                                                                                   §§push(!§`!G§.camera.isOnCastleView());
                                                                                                                                                   if(!(_loc8_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr691:
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr701);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr657);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1101);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr948);
                                                                                                                                                   }
                                                                                                                                                   addr724:
                                                                                                                                                }
                                                                                                                                                §§goto(addr864);
                                                                                                                                             }
                                                                                                                                             §§goto(addr513);
                                                                                                                                          }
                                                                                                                                          §§goto(addr405);
                                                                                                                                       }
                                                                                                                                       §§goto(addr331);
                                                                                                                                    }
                                                                                                                                    addr1505:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          this.§1Z§(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                continue loop37;
                                                                                                                                             }
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          §§goto(addr1024);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr864:
                                                                                                                                          §§push(this.§,@§());
                                                                                                                                          if(_loc9_ || this)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr876:
                                                                                                                                                      if(§`!G§.objects.mMightyEagleAdded)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            §§push(Boolean(§`!G§.objects.mMightyEagleHasTouchedGround));
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               while(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     while(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           continue loop61;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr977);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop43;
                                                                                                                                                                     addr974:
                                                                                                                                                                  }
                                                                                                                                                                  continue loop9;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr1080:
                                                                                                                                                                     §§push(this.§#!2§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr1083:
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                        if(_loc8_ && _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr1091:
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        while(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop38;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop56;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop39;
                                                                                                                                                                        §§goto(addr1080);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           break loop37;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop16;
                                                                                                                                                                        §§goto(addr1083);
                                                                                                                                                                     }
                                                                                                                                                                     addr1082:
                                                                                                                                                                     addr1140:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr969);
                                                                                                                                                                     §§push(!§`!G§.objects.isPigsAlive());
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr969:
                                                                                                                                                               continue loop56;
                                                                                                                                                               addr1079:
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc9_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop42;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr904);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1071);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1488:
                                                                                                                                                         §§push(this.§>v§);
                                                                                                                                                         break loop3;
                                                                                                                                                      }
                                                                                                                                                      if(!§`!G§.objects.mSardineCanAdded)
                                                                                                                                                      {
                                                                                                                                                         addr825:
                                                                                                                                                         this.§1Z§(§^!>§);
                                                                                                                                                         addr828:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop37;
                                                                                                                                                }
                                                                                                                                                continue loop49;
                                                                                                                                             }
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr994);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1525);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this.§3!9§);
                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          continue loop23;
                                                                                                                                       }
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    addr1209:
                                                                                                                                    §§push(§6!>§);
                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                    {
                                                                                                                                       addr1217:
                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                       {
                                                                                                                                          addr1480:
                                                                                                                                          if(this.§3!9§ == LEVEL_STATE_VICTORY1_SLINGSHOT)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || this)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1488);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1520);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(!(_loc8_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr1225:
                                                                                                                                          §§push(!(_loc4_ = §`!G§.activeObject));
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc9_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr1465:
                                                                                                                                                         if(_loc4_.§8W§ < _loc4_.§%5§)
                                                                                                                                                         {
                                                                                                                                                            addr1469:
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               addr1474:
                                                                                                                                                               _loc5_ = _loc4_ is §&!^§;
                                                                                                                                                               addr1459:
                                                                                                                                                               _loc6_ = _loc4_ is §0!Z§;
                                                                                                                                                               addr1460:
                                                                                                                                                               addr1475:
                                                                                                                                                               addr1471:
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  addr1446:
                                                                                                                                                                  _loc7_ = (_loc4_ as §9`§).§+^§;
                                                                                                                                                                  addr1445:
                                                                                                                                                                  if(!(_loc8_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr1435:
                                                                                                                                                                     §§push(Boolean(_loc5_));
                                                                                                                                                                     if(!Boolean(_loc5_))
                                                                                                                                                                     {
                                                                                                                                                                        addr1438:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr1439:
                                                                                                                                                                        §§push(Boolean(_loc6_));
                                                                                                                                                                        if(!(_loc8_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc8_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              addr1389:
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc8_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1401:
                                                                                                                                                                                       §§push(!_loc7_);
                                                                                                                                                                                       if(!_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc9_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1419:
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(_loc9_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1427:
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         addr1430:
                                                                                                                                                                                                         if(!_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc4_.getSpecialAnimationProgress());
                                                                                                                                                                                                            if(_loc9_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() >= 0);
                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1361:
                                                                                                                                                                                                                           if(_loc9_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              addr1369:
                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                 if(!(_loc8_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc9_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1315:
                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc8_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1326:
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc8_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §^I§(true);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1338:
                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            this.§'!V§(§8!K§);
                                                                                                                                                                                                                                                            addr1279:
                                                                                                                                                                                                                                                            if(!(_loc8_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc8_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1263:
                                                                                                                                                                                                                                                                  §`!G§.activeObject = null;
                                                                                                                                                                                                                                                                  if(_loc9_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     this.§'!V§(§8!K§);
                                                                                                                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(false)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1263);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1476:
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1460);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1263);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1279);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1369);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1338);
                                                                                                                                                                                                                                                            addr1340:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1430);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1263);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1474);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1435);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1361);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1445);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1438);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1401);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1315);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1445);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1438);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1326);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1419);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1427);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1361);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1465);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1439);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1459);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1326);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1435);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1465);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1446);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1427);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1475);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1430);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1263);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1435);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1427);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1389);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1471);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1469);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1263);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1476);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1340);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1435);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1465);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1435);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1446);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1488);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1480);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1525);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1480);
                                                                                                                     }
                                                                                                                     §§push(this.§>v§);
                                                                                                                     if(_loc8_ && this)
                                                                                                                     {
                                                                                                                        break loop3;
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  §§goto(addr721);
                                                                                                               }
                                                                                                               §§goto(addr1480);
                                                                                                            }
                                                                                                            §§goto(addr1209);
                                                                                                         }
                                                                                                         addr1525:
                                                                                                         this.§>v§ = 1000;
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr1520:
                                                                                                         }
                                                                                                         return;
                                                                                                         addr712:
                                                                                                      }
                                                                                                      §§goto(addr1144);
                                                                                                   }
                                                                                                   §§goto(addr1101);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr712);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1042);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr858:
                                                                              if(§`!G§.slingshot.updateScoreForRemainingBirds())
                                                                              {
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    §§goto(addr1505);
                                                                                 }
                                                                                 §§goto(addr1520);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.§'!V§(LEVEL_STATE_VICTORY2_END,true);
                                                                              }
                                                                              §§goto(addr1525);
                                                                           }
                                                                           if(§`!G§.objects.mMightyEagleHasTouchedGround)
                                                                           {
                                                                              §§goto(addr836);
                                                                           }
                                                                           §§goto(addr855);
                                                                        }
                                                                        §§goto(addr951);
                                                                     }
                                                                     §§goto(addr918);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr1140);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             break loop3;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr1145);
                              }
                           }
                           break;
                        }
                        §§goto(addr1491);
                     }
                  }
                  §§goto(addr1145);
               }
            }
         }
         §§goto(addr1144);
      }
      
      protected function §1Z§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.§#!2§)
            {
               while(true)
               {
                  this.§#!2§ = true;
                  addr139:
                  while(true)
                  {
                  }
                  addr100:
                  if(_loc4_ || this)
                  {
                     return;
                  }
               }
            }
            loop2:
            while(true)
            {
               §§push(new Date().time - §`!G§.slingshot.timeOfLastBirdShot);
               loop3:
               while(true)
               {
                  §§push(6000);
                  addr120:
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        break loop3;
                     }
                     addr95:
                     loop5:
                     while(!§`!G§.slingshot.mDragging)
                     {
                        loop6:
                        while(true)
                        {
                           if(§`!G§.objects.isWorldAtSleep())
                           {
                              while(true)
                              {
                                 if(_loc4_ || param2)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       this.§^O§ = Math.min(this.§^O§,3500);
                                       while(!(_loc3_ && param2))
                                       {
                                          while(true)
                                          {
                                             continue loop3;
                                          }
                                       }
                                       addr131:
                                       return;
                                       addr87:
                                    }
                                    break loop5;
                                 }
                                 if(_loc3_)
                                 {
                                    break loop6;
                                 }
                                 continue loop6;
                              }
                              continue loop2;
                              addr56:
                           }
                           continue loop3;
                        }
                     }
                     §§goto(addr100);
                  }
               }
               §§goto(addr131);
            }
         }
         §§goto(addr94);
      }
      
      public function §,!F§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§3!9§);
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
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§3!9§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop22:
                                             while(!_loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop8:
                                                   while(_loc3_)
                                                   {
                                                      §§pop();
                                                      loop9:
                                                      while(!_loc2_)
                                                      {
                                                         §§push(this.§3!9§);
                                                         loop10:
                                                         while(!_loc2_)
                                                         {
                                                            §§push(§^!>§);
                                                            while(!_loc2_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               §§push(LEVEL_STATE_VICTORY1_SLINGSHOT);
                                                               if(_loc2_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc3_)
                                                               {
                                                                  addr50:
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        addr60:
                                                                        §§push(!§§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc2_ && param1)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
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
                                                                                          while(!_loc2_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   while(_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc2_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         if(!(_loc3_ || param1))
                                                                                                         {
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr69);
                                                                                                         }
                                                                                                         addr80:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(_loc3_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(this.§3!9§);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  continue loop10;
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               loop20:
                                                                                                               while(_loc3_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§>v§ <= 0);
                                                                                                                     addr78:
                                                                                                                     while(_loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr80);
                                                                                                                     }
                                                                                                                     addr130:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        continue loop20;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                               §§goto(addr50);
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                            addr94:
                                                                                                         }
                                                                                                         §§goto(addr69);
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                   addr112:
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§goto(addr130);
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr144:
                                                                           }
                                                                           addr69:
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr112);
                                                                     }
                                                                     §§goto(addr78);
                                                                  }
                                                                  §§goto(addr94);
                                                               }
                                                               §§goto(addr60);
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop4;
                                                   addr162:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr144);
                                                }
                                             }
                                             continue loop3;
                                          }
                                          addr157:
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr157);
                     }
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      public function §>"3§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§3!9§);
            if(_loc1_ || _loc2_)
            {
               §§push(LEVEL_STATE_VICTORY2_END);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           addr66:
                           return this.§3!9§ == §^!>§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
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
                  this.§]!x§(param1.delta > 0);
               }
            }
         }
      }
      
      public function §]!x§(param1:Boolean, param2:Number = 0) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§case §);
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
                              §§push(!§`!G§.mReadyToRun);
                           }
                        }
                        addr258:
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
                                 §§push(Boolean(§`!G§.slingshot.mDragging));
                                 loop8:
                                 while(_loc3_)
                                 {
                                    §§push(§§pop());
                                    loop9:
                                    for(; _loc3_; while(true)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          continue loop9;
                                       }
                                       if(!§§pop())
                                       {
                                          §§goto(addr218);
                                       }
                                       §§goto(addr149);
                                    })
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                §§pop();
                                                while(true)
                                                {
                                                   §§push(Boolean(§`!G§.camera.mDragging));
                                                   addr112:
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      §§goto(addr24);
                                                   }
                                                }
                                                addr234:
                                             }
                                             else
                                             {
                                                §§goto(addr258);
                                             }
                                          }
                                          §§goto(addr259);
                                          addr231:
                                       }
                                       while(true)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      §§goto(addr259);
                                                   }
                                                }
                                                else
                                                {
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(this.§3!9§);
                                                      while(true)
                                                      {
                                                         §§push(§4_§);
                                                         addr134:
                                                         while(true)
                                                         {
                                                            if(_loc3_ || param1)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               while(!(_loc4_ && this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        while(!(_loc4_ && param2))
                                                                        {
                                                                           if(_loc3_ || param2)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                        addr218:
                                                                        §§pop();
                                                                        continue loop14;
                                                                        addr154:
                                                                     }
                                                                     §§goto(addr71);
                                                                  }
                                                                  continue loop1;
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     addr71:
                                                                     while(§§pop())
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(!§`!G§.isPlayingReplay())
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 addr92:
                                                                                 if(_loc4_ && param2)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 §`!G§.camera.adjustManualScale(param1,param2 == 0 ? Number(§"!P§.MANUAL_SCALE_STEP) : Number(param2));
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §`!G§.changeReplaySpeed(param1);
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr251);
                                                                              }
                                                                           }
                                                                           §§goto(addr112);
                                                                        }
                                                                        §§goto(addr92);
                                                                     }
                                                                     §§goto(addr24);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr231);
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                            addr204:
                                                            addr205:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     continue loop9;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr24:
                                                return;
                                             }
                                             §§push(this.§3!9§);
                                             §§goto(addr203);
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop6;
                              }
                           }
                           addr251:
                           addr176:
                           while(!(_loc4_ && this))
                           {
                              continue loop15;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      private function §,!1§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[e§ = param1;
         }
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Point = null;
         if(!_loc6_)
         {
            if(!this.§case §)
            {
               if(_loc5_ || param2)
               {
                  §§goto(addr31);
               }
            }
            var _loc3_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN,false,true,param1,param2);
            if(_loc5_)
            {
               dispatchEvent(_loc3_);
            }
            while(true)
            {
               if(_loc3_.isDefaultPrevented())
               {
                  if(!(_loc6_ && param2))
                  {
                     break;
                  }
               }
               §8!W§.§for§();
               while(true)
               {
                  §§push(this.§,!F§(false));
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           if(!§`!G§.isPlayingReplay())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§`!G§.activeObject));
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop7:
                                          while(_loc5_)
                                          {
                                             §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§3!9§ == §6!>§);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr74:
                                                   if(_loc6_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(!(_loc5_ || this))
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr91:
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc6_)
                                                   {
                                                      addr93:
                                                      if(!(_loc5_ || _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc5_ || this))
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr157:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        §§goto(addr191);
                                                                     }
                                                                     §§push(§^!y§);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr74);
                                                                     }
                                                                     §§goto(addr91);
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               addr156:
                                                            }
                                                            §§goto(addr93);
                                                         }
                                                         addr290:
                                                         §`!G§.resetReplaySpeed();
                                                         return;
                                                         addr147:
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§goto(addr290);
                                                         }
                                                         else
                                                         {
                                                            _loc4_ = §`!G§.screenToBox2D(param1,param2);
                                                            if(_loc5_ || param2)
                                                            {
                                                               if(!§`!G§.slingshot.canStartDragging(_loc4_))
                                                               {
                                                                  §`!G§.camera.startDragging(param1,param2);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        addr269:
                                                                        §`!G§.slingshot.startDragging();
                                                                        this.§'!V§(§%a§);
                                                                        addr272:
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr156);
                                                }
                                             }
                                          }
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr147);
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §`!G§.camera.startDragging(param1,param2);
                              if(_loc5_)
                              {
                                 §§goto(addr290);
                              }
                           }
                           §§goto(addr290);
                        }
                     }
                     addr191:
                     return;
                  }
               }
            }
            return;
         }
         addr31:
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = null;
         if(!(_loc5_ && param1))
         {
            §§push(this.§case §);
            if(_loc4_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §8!W§.§^!R§();
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc5_ && this)
                        {
                           §§goto(addr69);
                        }
                        if(this.§3!9§ == §@j§)
                        {
                           if(!_loc5_)
                           {
                              this.§'!V§(§%a§);
                              if(!(_loc5_ && this))
                              {
                                 if(false)
                                 {
                                    continue;
                                 }
                                 addr73:
                                 if(§`!G§.slingshot.mDragging)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr84:
                                       _loc3_ = §`!G§.screenToBox2D(param1,param2);
                                       if(!_loc5_)
                                       {
                                          §`!G§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                                          while(true)
                                          {
                                             if(!§`!G§.slingshot.canShootTheBird())
                                             {
                                                §`!G§.slingshot.cancelDragging();
                                                if(!_loc5_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(false)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§'!V§(§6!>§);
                                                            addr119:
                                                            §§goto(addr147);
                                                         }
                                                      }
                                                      addr147:
                                                      addr173:
                                                      while(!(_loc4_ || _loc3_))
                                                      {
                                                      }
                                                      addr147:
                                                      if(§`!G§.camera.mDragging)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§push(!isNaN(param1));
                                                            if(!(_loc5_ && param2))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                  }
                                                                  addr204:
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §`!G§.camera.dragToNewPoint(param1,param2);
                                                                        addr210:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr182:
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                     }
                                                                     addr205:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §`!G§.camera.stopDragging();
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr182);
                                                                  }
                                                               }
                                                               §§goto(addr204);
                                                            }
                                                            §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr204);
                                                               §§push(!isNaN(param2));
                                                            }
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr137);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §`!G§.slingshot.shoot();
                                                      }
                                                      addr132:
                                                   }
                                                   while(_loc4_)
                                                   {
                                                      addr137:
                                                      return;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr119);
                                             }
                                          }
                                       }
                                       §§goto(addr132);
                                    }
                                    break;
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr84);
                           }
                           break;
                        }
                        §§goto(addr73);
                     }
                     break;
                  }
                  §§goto(addr173);
               }
               §§goto(addr69);
            }
            §§goto(addr204);
         }
         addr69:
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(!(_loc4_ && param1))
         {
            if(!this.§case §)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr37);
               }
            }
            else if(§`!G§.slingshot.mDragging)
            {
               if(!(_loc4_ && this))
               {
                  _loc3_ = §`!G§.screenToBox2D(param1,param2);
                  if(!(_loc4_ && this))
                  {
                     §`!G§.slingshot.setNewCoordinatesForRubber(_loc3_.x,_loc3_.y,false);
                     if(!_loc4_)
                     {
                        addr106:
                        this.§>c§ = param1;
                        if(_loc5_)
                        {
                           this.§-<§ = param2;
                        }
                     }
                  }
                  return;
               }
               addr91:
               §`!G§.camera.dragToNewPoint(param1,param2);
            }
            else if(§`!G§.camera.mDragging)
            {
               if(!_loc4_)
               {
                  §§goto(addr91);
               }
            }
            §§goto(addr106);
         }
         addr37:
      }
      
      public function §+!y§() : Point
      {
         return new Point(this.§>c§,this.§-<§);
      }
      
      override public function addScore(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§,!R§.§2">§(this.§,!R§.getValue() + param1);
            while(true)
            {
               this.§"!T§(§"!e§);
               addr55:
               if(!(_loc3_ || this))
               {
                  continue;
               }
               this.§>v§ = 2000;
               do
               {
                  this.§!!4§ = §,!U§;
               }
               while(_loc2_);
               
               addr25:
               return;
               addr65:
            }
         }
         while(this.§3!9§ == §8!K§)
         {
            if(_loc3_)
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr55);
            }
            §§goto(addr65);
         }
         §§goto(addr25);
      }
      
      override public function getScore() : int
      {
         return this.§,!R§.getValue();
      }
      
      override public function getEagleScore() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!§'_§.§=M§.objects.mMightyEagleAdded)
            {
               if(_loc3_)
               {
                  addr25:
                  §§push(0);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr39:
                  §§push(§`!r§.getLevelForId(§`!r§.§0B§).getEagleScore());
               }
               var _loc1_:Number = §§pop();
               var _loc2_:Number = Math.min(100,this.getScore() / _loc1_ * 100);
               return Math.round(_loc2_);
            }
            §§goto(addr39);
         }
         §§goto(addr25);
      }
      
      public function get mouseEnabled() : Boolean
      {
         return this.§case §;
      }
      
      public function set mouseEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§case § = param1;
         }
      }
   }
}
