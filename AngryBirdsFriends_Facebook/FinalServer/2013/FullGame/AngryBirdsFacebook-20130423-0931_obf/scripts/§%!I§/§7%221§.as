package §%!I§
{
   import §%i§.§0!Y§;
   import §%i§.§^n§;
   import §,l§.§#!,§;
   import §-r§.§!"M§;
   import §0D§.§3I§;
   import §0D§.§]"§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §4!<§.§%6§;
   import §4!<§.§&=§;
   import §5!Y§.§8y§;
   import §9!n§.LevelManager;
   import §9@§.§@q§;
   import §;u§.§+"9§;
   import §@!"§.§?l§;
   import §^"F§.§4!2§;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class §7"1§ extends §+"9§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §7"1§))
         {
            STATE_NAME = "stateTournamentPlay";
         }
      }
      
      private const §5!7§:int = 500;
      
      private const §@Y§:int = 10000;
      
      private const §>B§:int = 20.0;
      
      private const §]!8§:int = 8000;
      
      private var §5$§:Number;
      
      private var §9D§:Number;
      
      private var §7C§:§6!K§;
      
      private var §@4§:Boolean = false;
      
      protected var §,K§:§3I§;
      
      private var §]"5§:Boolean = false;
      
      private var §;"T§:§6!K§;
      
      private var §6D§:Rectangle;
      
      public function §7"1§(param1:Boolean = true, param2:String = "stateTournamentPlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param1,param2);
         }
         do
         {
            this.§,K§ = new §3I§();
         }
         while(_loc4_ && param2);
         
      }
      
      override protected function levelStarted() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.levelStarted();
            while(true)
            {
               §2"@§.getItemByName("Button_MightyEagle").setVisibility(false);
               while(true)
               {
                  §2"@§.getItemByName("TextField_PowerUpCountME").setVisibility(false);
                  while(!(_loc3_ && _loc1_))
                  {
                     §2"@§.getItemByName("PowerUpCountME_BG").setVisibility(false);
                     loop3:
                     while(true)
                     {
                        §2"@§.getItemByName("Container_Wingman").setVisibility(true);
                        addr186:
                        while(true)
                        {
                           (§?l§.§'h§ as §%6§).§+"3§.§0-§ = false;
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr186);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:§%6§ = null;
         if(_loc4_)
         {
            if(this.§6D§)
            {
               if(!(_loc5_ && this))
               {
                  _loc2_ = §2"@§.getItemByName("Movieclip_FrenzyAlert").mClip;
                  if(_loc4_)
                  {
                     _loc2_.scrollRect = this.§6D§;
                     addr46:
                     §§push(this.§@4§);
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§push(this.§-"R§(param1));
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       (§%"9§ as §!"M§).§0!$§ = true;
                                       if(_loc4_ || param1)
                                       {
                                          this.§@4§ = false;
                                          loop21:
                                          while(true)
                                          {
                                             (§%"9§ as §!"M§).§88§();
                                             addr279:
                                             while(true)
                                             {
                                                addr269:
                                                while(true)
                                                {
                                                   this.§,K§.update(param1);
                                                }
                                                continue loop21;
                                             }
                                          }
                                          addr283:
                                       }
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§]"5§);
                                       loop13:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop19:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§?l§.§'h§);
                                                            if(_loc4_)
                                                            {
                                                               §§push((§§pop() as §%6§).§+"3§.§0-§);
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr229:
                                                                  while(true)
                                                                  {
                                                                     addr230:
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§ =§);
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                addr214:
                                                                                                while(!_loc4_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr217:
                                                                                                   §§pop();
                                                                                                   addr218:
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§?l§.§'h§);
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop().slingshot.birdsAvailable);
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  loop3:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop4:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(_loc4_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§>"X§.powerUpsUsable));
                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ || this))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(_loc5_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          if(_loc5_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop14;
                                                                                                                                          }
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc4_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                break loop4;
                                                                                                                                             }
                                                                                                                                             continue loop4;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break loop3;
                                                                                                                                    }
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 §§goto(addr218);
                                                                                                                              }
                                                                                                                              addr297:
                                                                                                                              break loop19;
                                                                                                                           }
                                                                                                                           continue loop2;
                                                                                                                           addr177:
                                                                                                                        }
                                                                                                                        §§goto(addr122);
                                                                                                                     }
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    addr146:
                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             §§push(§?l§.§'h§);
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                addr288:
                                                                                                                                                §§push((§§pop() as §%6§).§4!]§());
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() < §;"W§.getMaxPowerupsToUse());
                                                                                                                                                   break loop3;
                                                                                                                                                }
                                                                                                                                                break loop1;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop1;
                                                                                                                                          §§goto(addr146);
                                                                                                                                       }
                                                                                                                                       addr153:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr279);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr297);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     §§goto(addr214);
                                                                                                                  }
                                                                                                                  addr296:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr297);
                                                                                                                  }
                                                                                                                  §§push(super.run(param1));
                                                                                                                  break loop1;
                                                                                                                  addr174:
                                                                                                               }
                                                                                                               §§goto(addr217);
                                                                                                            }
                                                                                                            §§goto(addr177);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr288);
                                                                                                   }
                                                                                                   return §§pop();
                                                                                                }
                                                                                                §§goto(addr174);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       addr257:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                                 §§goto(addr297);
                                                                              }
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         continue loop6;
                                                      }
                                                      _loc3_ = §§pop() as §%6§;
                                                      if(_loc4_)
                                                      {
                                                         §§push(_loc3_.§"!A§(§4!2§.§`!4§.§1!#§));
                                                         loop24:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  §;"W§.setPowerupActive(§4!2§.§`!4§.§,§,true);
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§]"5§ = true;
                                                                  addr471:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr491:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc3_.§"!A§(§4!2§.§<"O§.§1!#§));
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        §;"W§.setPowerupActive(§4!2§.§<"O§.§,§,true);
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           this.§]"5§ = true;
                                                                           loop30:
                                                                           while(true)
                                                                           {
                                                                              addr351:
                                                                              if(_loc5_ && _loc2_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §;"W§.setPowerupActive(§4!2§.§8"1§.§,§,true);
                                                                              loop41:
                                                                              for(; _loc4_; this.§]"5§ = true,if(!_loc4_)
                                                                              {
                                                                                 continue;
                                                                              },if(!_loc5_)
                                                                              {
                                                                                 if(_loc5_ && this)
                                                                                 {
                                                                                    continue loop28;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    loop40:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.§"!A§(§4!2§.§8"1§.§1!#§));
                                                                                       if(_loc5_ && _loc2_)
                                                                                       {
                                                                                          while(!_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop24;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                continue loop40;
                                                                                             }
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                §;"W§.setPowerupActive(§4!2§.§%!U§.§,§,true);
                                                                                             }
                                                                                             continue loop40;
                                                                                          }
                                                                                          while(_loc4_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§goto(addr431);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr396);
                                                                                                §§push(_loc3_.§"!A§(§4!2§.§%!U§.§1!#§));
                                                                                                break loop41;
                                                                                             }
                                                                                          }
                                                                                          addr396:
                                                                                          continue loop27;
                                                                                          addr428:
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(!(_loc4_ || _loc2_))
                                                                                          {
                                                                                             continue loop41;
                                                                                          }
                                                                                          addr344:
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             §§goto(addr351);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       while(!_loc5_)
                                                                                       {
                                                                                          this.§]"5§ = true;
                                                                                          while(_loc4_ || param1)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop40;
                                                                                             }
                                                                                             §§goto(addr491);
                                                                                          }
                                                                                          §§goto(addr471);
                                                                                          §§goto(addr344);
                                                                                       }
                                                                                       continue loop29;
                                                                                    }
                                                                                    continue loop30;
                                                                                 }
                                                                                 §§goto(addr296);
                                                                              },§§goto(addr380))
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr368:
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr431:
                                                                                    while(true)
                                                                                    {
                                                                                       §;"W§.setPowerupActive(§4!2§.§3"$§.§,§,true);
                                                                                       §§goto(addr368);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§]"5§ = true;
                                                                                    break loop41;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr390);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr428);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                   addr264:
                                                }
                                                §§goto(addr229);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr269);
                              }
                              §§goto(addr230);
                           }
                           §§goto(addr257);
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr264);
                  }
                  §§goto(addr46);
               }
               §§goto(addr153);
            }
            §§goto(addr46);
         }
         §§goto(addr297);
      }
      
      override protected function dimPowerUp() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;"T§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§;"T§);
                     addr116:
                     addr101:
                     while(true)
                     {
                        §§pop().§7!d§();
                        addr117:
                        while(true)
                        {
                        }
                     }
                     loop2:
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§;"T§);
                              while(true)
                              {
                                 §§pop().delay = 2;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§;"T§);
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       break loop2;
                                    }
                                    §§pop().play();
                                    while(true)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          continue loop2;
                                       }
                                       continue loop7;
                                       addr69:
                                       super.dimPowerUp();
                                       if(!(_loc2_ || this))
                                       {
                                          continue;
                                       }
                                       if(!_loc1_)
                                       {
                                          break loop5;
                                       }
                                       §§goto(addr117);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           return;
                           addr108:
                        }
                        continue loop0;
                     }
                     §§goto(addr116);
                  }
               }
               while(true)
               {
                  this.§;"T§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Movieclip_FrenzyAlert").mClip,{"alpha":0},null,0.5);
                  §§goto(addr101);
                  §§goto(addr117);
               }
            }
            §§goto(addr116);
         }
         §§goto(addr108);
      }
      
      override protected function hidePowerUp(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§;"T§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§;"T§);
                     while(true)
                     {
                        §§pop().§7!d§();
                     }
                     addr92:
                  }
                  while(true)
                  {
                  }
                  addr93:
               }
               while(true)
               {
                  this.set();
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§;"T§);
                        if(_loc3_ || _loc2_)
                        {
                           §§pop().onComplete = this.§,"=§;
                           do
                           {
                              super.hidePowerUp(param1);
                           }
                           while(_loc2_);
                           
                           if(!(_loc3_ || param1))
                           {
                              continue loop2;
                           }
                           §§goto(addr47);
                           continue loop2;
                        }
                     }
                     return;
                  }
                  §§goto(addr93);
               }
            }
            §§goto(addr92);
         }
         §§goto(addr77);
      }
      
      private function set() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = §2"@§.getItemByName("Movieclip_FrenzyAlert").mClip;
         if(_loc2_ || _loc2_)
         {
            this.§6D§ = new Rectangle(0,0,_loc1_.width,_loc1_.height);
            do
            {
               _loc1_.scrollRect = this.§6D§;
               do
               {
                  this.§;"T§ = §0W§.§&"5§.§]!r§(this.§6D§,{"x":this.§6D§.x + this.§6D§.width},null,0.5);
                  loop2:
                  do
                  {
                     §§push(this.§;"T§);
                     while(true)
                     {
                        §§pop().delay = 0;
                        while(true)
                        {
                           §§push(this.§;"T§);
                           if(_loc3_)
                           {
                              break;
                           }
                           §§pop().play();
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(!(_loc2_ || _loc1_));
                  
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      private function §,"=§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2"@§.getItemByName("Movieclip_FrenzyAlert").mClip.visible = false;
         }
      }
      
      override protected function facebookActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.facebookActivate();
         }
         loop0:
         while(true)
         {
            §§push(§?l§.§'h§);
            loop1:
            while(true)
            {
               §§push(§§pop().objects.mSardineCanAdded);
               loop2:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop3:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr155:
                              while(true)
                              {
                                 §§push(Boolean(§9!h§));
                                 addr133:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop5;
                                    }
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 §§push(§§pop().slingshot.mSlingShotState == §&=§.§+!`§);
                                 addr91:
                                 continue loop1;
                                 if(_loc1_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop12:
                                          for(; _loc2_; if(!(_loc2_ || _loc2_))
                                          {
                                             continue;
                                          },§§goto(addr63))
                                          {
                                             (§2"@§.getItemByName("Movieclip_Slider") as §0!Y§).mClip.visible = true;
                                             loop13:
                                             while(_loc2_)
                                             {
                                                this.§,K§.activate(§2"@§.getItemByName("Container_Wingman").mClip as MovieClip,false);
                                                while(true)
                                                {
                                                   addr47:
                                                   while(!(_loc1_ && this))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      continue loop13;
                                                      (§%"9§ as §!"M§).§0!$§ = false;
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            break loop11;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr155);
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          (§%"9§ as §!"M§).§3!W§ = this.§6!L§;
                                          §§goto(addr47);
                                          §§goto(addr85);
                                       }
                                    }
                                    return;
                                    addr105:
                                 }
                                 §§goto(addr133);
                              }
                           }
                           else
                           {
                              §§goto(addr105);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            do
            {
               §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").x = 115;
               do
               {
                  §2"@§.getItemByName("Container_PowerUpButtons").x = 115;
               }
               while(!(_loc1_ || this));
               
            }
            while(!_loc1_);
            
         }
      }
      
      override protected function disablePowerupMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.disablePowerupMenu();
            do
            {
               §;"W§.setPowerupActive(§4!2§.§-Y§.§,§,false);
            }
            while(!_loc1_);
            
         }
      }
      
      override protected function fetchScoresForLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §`g§ = §%"S§.§%P§.§;8§(LevelManager.§5!T§(LevelManager.§ T§).name,LevelManager.§ T§,true);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:* = param2;
         if(_loc11_ || param1)
         {
            §§push("PAUSE");
            if(_loc11_)
            {
               §§push(_loc9_);
               if(_loc11_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc11_ || this)
                     {
                        §§push(0);
                        if(_loc10_)
                        {
                        }
                     }
                     else
                     {
                        addr416:
                        §§push(3);
                        if(!_loc11_)
                        {
                        }
                     }
                     addr424:
                     loop0:
                     while(true)
                     {
                        loop16:
                        switch(§§pop())
                        {
                           case 0:
                              addr327:
                              (§?l§.§'h§ as §%6§).§+"3§.§]W§();
                              super.uiInteractionHandler(param1,param2,param3);
                              break;
                              addr331:
                           case 1:
                              §;"W§.powerUpsUsable = §;"W§.usePowerup(param2);
                              §§push(§?l§.§'h§);
                              loop1:
                              while(true)
                              {
                                 if(_loc11_)
                                 {
                                    §§push(§§pop().slingshot);
                                    do
                                    {
                                       §§push(§§pop().§5"U§);
                                       if(_loc11_)
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc10_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       _loc4_ = §§pop();
                                       §§push(§§pop().slingshot);
                                       continue loop1;
                                    }
                                    while(_loc10_);
                                    
                                    §§push(§§pop().§0"I§());
                                    loop3:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc11_ || param2)
                                       {
                                          _loc5_ = §§pop();
                                          if(!_loc10_)
                                          {
                                             §§push(1);
                                             if(_loc10_ && this)
                                             {
                                                break;
                                             }
                                             §§push(_loc4_);
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc10_ && param3)
                                                {
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             §§push(int(§§pop()));
                                             if(_loc11_)
                                             {
                                                addr262:
                                                §§push(_loc6_ = §§pop());
                                             }
                                             §§push(§§pop() + "");
                                             loop4:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc11_ || this)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc10_ && param1)
                                                   {
                                                      break loop3;
                                                   }
                                                   §§push(0);
                                                   while(true)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push("last-chance");
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            _loc7_ = §§pop();
                                                            while(true)
                                                            {
                                                               addr171:
                                                               while(_loc11_ || param2)
                                                               {
                                                                  §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                                                                  if(!(_loc11_ || this))
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         §@q§.§8"#§(LevelManager.§ T§,_loc7_);
                                                         §§goto(addr214);
                                                         §§goto(addr230);
                                                      }
                                                   }
                                                }
                                                break loop16;
                                             }
                                          }
                                          break loop16;
                                       }
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr327);
                              }
                              §§goto(addr327);
                              addr322:
                           case 2:
                              §§push(§#!,§.§&"5§.§]![§(§4!2§.§-Y§.§1!#§));
                              if(!_loc10_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc10_ && param2)
                                 {
                                    continue;
                                 }
                                 if(_loc11_)
                                 {
                                    §§push(§§pop());
                                    if(_loc11_)
                                    {
                                       if(_loc11_)
                                       {
                                          if(!_loc10_)
                                          {
                                             _loc8_ = §§pop();
                                             if(_loc10_ && param2)
                                             {
                                                continue;
                                             }
                                             addr109:
                                             §§push(0);
                                             if(!(_loc10_ && param3))
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!(_loc10_ && param3))
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         §2"@§.getItemByName("MovieClip_GetMore_Wingman").setVisibility(true);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  (§2"@§.getItemByName("MovieClip_GetMore_Wingman") as §^n§).§6",§ = true;
                                                                  addr52:
                                                                  (§2"@§.getItemByName("MovieClip_GetMore_Wingman") as §^n§).§!!a§("Start");
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr29:
                                                                     §§goto(addr327);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr153);
                                                                  }
                                                                  addr71:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr313);
                                                               }
                                                               §§goto(addr327);
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr29);
                                             }
                                             §§goto(addr241);
                                          }
                                          §§goto(addr262);
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr109);
                                 }
                              }
                              continue;
                              §§goto(addr258);
                              break;
                           case 3:
                              §2"@§.getItemByName("MovieClip_GetMore_Wingman").setVisibility(false);
                              if(_loc11_)
                              {
                                 if(!_loc10_)
                                 {
                                    if(_loc11_ || param2)
                                    {
                                       if(!_loc10_)
                                       {
                                          if(true)
                                          {
                                          }
                                          §§goto(addr327);
                                       }
                                       else
                                       {
                                          §§goto(addr322);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr71);
                                    }
                                 }
                                 §§goto(addr52);
                              }
                              §§goto(addr327);
                           default:
                              §§goto(addr327);
                        }
                        return;
                     }
                  }
                  else
                  {
                     §§push("POWERUP_WINGMAN");
                     if(_loc11_)
                     {
                        §§push(_loc9_);
                        if(_loc11_ || param1)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc10_ && param3))
                              {
                                 §§push(1);
                                 if(!(_loc11_ || param1))
                                 {
                                    addr412:
                                 }
                              }
                              else
                              {
                                 addr409:
                                 §§push(2);
                                 if(_loc11_)
                                 {
                                    §§goto(addr412);
                                 }
                              }
                           }
                           else
                           {
                              §§push("POWERUP_OVER_WINGMAN");
                              if(_loc11_)
                              {
                                 addr393:
                                 §§push(_loc9_);
                                 if(!_loc10_)
                                 {
                                    addr406:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc11_)
                                       {
                                          §§goto(addr409);
                                       }
                                       else
                                       {
                                          §§goto(addr416);
                                       }
                                    }
                                    else
                                    {
                                       addr414:
                                       §§push("POWERUP_OUT_WINGMAN");
                                       §§push(_loc9_);
                                    }
                                    §§goto(addr416);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr416);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                              }
                              §§goto(addr414);
                           }
                           §§goto(addr424);
                        }
                        §§goto(addr406);
                     }
                     §§goto(addr414);
                  }
                  §§goto(addr416);
               }
               §§goto(addr406);
            }
            §§goto(addr393);
         }
         §§goto(addr416);
      }
      
      override protected function showScoresForLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§?l§.§ "G§ as §%"S§).§!n§(LevelManager.§ T§,§`g§,true);
         }
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function getLevelLoadState() : String
      {
         return §6"'§.STATE_NAME;
      }
      
      override protected function getPauseState() : String
      {
         return §]"=§.STATE_NAME;
      }
      
      override public function getVictoryState() : String
      {
         return §6"&§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §7!6§.STATE_NAME;
      }
      
      private function §^9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            (§%"9§ as §!"M§).§0!$§ = false;
            loop0:
            while(true)
            {
               this.§@4§ = false;
               while(true)
               {
                  §0"E§ = false;
                  continue loop0;
                  addr43:
                  if(!(_loc2_ && _loc1_))
                  {
                     addr24:
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      private function §?L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§7C§ == null)
            {
               if(!_loc2_)
               {
                  addr24:
                  this.§'$§();
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §'$§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc1_))
         {
            if((§?l§.§'h§ as §%6§).§+"3§.§0-§)
            {
               if(_loc4_)
               {
                  §§goto(addr32);
               }
            }
            var _loc1_:MovieClip = §2"@§.getItemByName("Button_Wingman").mClip as MovieClip;
            §§push(1.15);
            if(!(_loc5_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(0.1);
            if(!(_loc5_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               this.§7C§ = §0W§.§&"5§.§%G§(§0W§.§&"5§.§]!r§(_loc1_,{
                  "scaleX":_loc2_,
                  "scaleY":_loc2_
               },{
                  "scaleX":1,
                  "scaleY":1
               },_loc3_,§0W§.§'I§),§0W§.§&"5§.§]!r§(_loc1_,{
                  "scaleX":1,
                  "scaleY":1
               },{
                  "scaleX":_loc2_,
                  "scaleY":_loc2_
               },_loc3_,§0W§.§"q§),§0W§.§&"5§.§]!r§(_loc1_,{
                  "scaleX":_loc2_,
                  "scaleY":_loc2_
               },{
                  "scaleX":1,
                  "scaleY":1
               },_loc3_,§0W§.§'I§),§0W§.§&"5§.§]!r§(_loc1_,{
                  "scaleX":1,
                  "scaleY":1
               },{
                  "scaleX":_loc2_,
                  "scaleY":_loc2_
               },_loc3_,§0W§.§"q§),§0W§.§&"5§.§]!r§(_loc1_,{
                  "scaleX":1,
                  "scaleY":1
               },{
                  "scaleX":1,
                  "scaleY":1
               },1,§0W§.§"q§));
               loop0:
               while(true)
               {
                  §§push(this.§7C§);
                  addr85:
                  loop1:
                  while(true)
                  {
                     §§pop().onComplete = this.§'$§;
                     addr98:
                     while(!_loc5_)
                     {
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§push(this.§7C§);
               if(!(_loc5_ && _loc3_))
               {
                  §§pop().play();
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§goto(addr98);
               }
               §§goto(addr85);
            }
            return;
         }
         addr32:
      }
      
      private function §-"R§(param1:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§9D§);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop() == 0)
               {
                  loop6:
                  while(true)
                  {
                     §§push(§?l§.§'h§);
                     loop7:
                     while(true)
                     {
                        §§push(§§pop().camera);
                        loop8:
                        while(true)
                        {
                           §§pop().goToBirdView();
                           loop9:
                           while(true)
                           {
                              §§push(§?l§.§'h§);
                              if(!(_loc6_ || param1))
                              {
                                 break;
                              }
                              §§push(§§pop().camera);
                              if(_loc5_ && _loc2_)
                              {
                                 continue loop8;
                              }
                              §§pop().§?"P§(1);
                              loop10:
                              while(true)
                              {
                                 addr46:
                                 while(true)
                                 {
                                    this.§5$§ = getTimer();
                                    while(_loc6_)
                                    {
                                       this.§?L§();
                                       if(_loc6_ || _loc3_)
                                       {
                                          continue loop10;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 continue loop9;
                              }
                           }
                           continue loop7;
                        }
                     }
                  }
                  addr86:
               }
               §§push(Math.round((this.§]!8§ - this.§9D§) / 1000) - 1);
               if(!_loc5_)
               {
                  addr103:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc6_)
               {
                  §§push(_loc2_);
                  if(_loc6_)
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc6_ || this)
                        {
                           §§push(0);
                           if(_loc6_ || param1)
                           {
                              addr138:
                              _loc2_ = Number(§§pop());
                              addr139:
                              §§push(int(Math.floor(_loc2_ / 60)));
                           }
                           var _loc3_:* = §§pop();
                           if(_loc6_ || param1)
                           {
                              §§push(_loc2_);
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(§§pop() % 60);
                                 if(!_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc2_ = §§pop();
                           }
                           §§push("");
                           if(!_loc5_)
                           {
                              §§push(§§pop() + _loc2_);
                           }
                           var _loc4_:String = §§pop();
                           if(_loc6_)
                           {
                              §§push(_loc2_);
                              loop0:
                              while(true)
                              {
                                 §§push(10);
                                 addr264:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push("0");
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(§§pop() + _loc2_);
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       while(true)
                                       {
                                       }
                                       addr279:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§,K§);
                                       §§push(_loc3_ + ":");
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop() + _loc4_);
                                       }
                                       §§pop().§?,§(§§pop());
                                       loop4:
                                       while(!_loc5_)
                                       {
                                          §§push(this);
                                          §§push(this.§9D§);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().§9D§ = §§pop();
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop4;
                                          }
                                          §§push(false);
                                          if(_loc6_ || _loc3_)
                                          {
                                             return §§pop();
                                          }
                                          addr214:
                                          return §§pop();
                                       }
                                       §§goto(addr279);
                                    }
                                 }
                              }
                           }
                           §§goto(addr213);
                        }
                     }
                     §§goto(addr139);
                  }
               }
               §§goto(addr138);
            }
            §§goto(addr103);
         }
         §§goto(addr86);
      }
      
      public function §6!L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push((§?l§.§'h§ as §%6§).§+"3§.§0-§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  (§%"9§ as §!"M§).§0!$§ = true;
                  if(_loc1_)
                  {
                     if(!(_loc1_ || _loc1_))
                     {
                        loop0:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && this))
                              {
                                 this.§-"R§(1);
                                 loop1:
                                 while(true)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc1_ || this)
                                    {
                                       break;
                                    }
                                    addr115:
                                    while(true)
                                    {
                                       §§push(this.§@4§);
                                       addr117:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             break loop1;
                                          }
                                       }
                                    }
                                 }
                                 addr19:
                                 return;
                                 addr45:
                              }
                              while(true)
                              {
                                 this.§,K§.§=!9§();
                              }
                           }
                           while(true)
                           {
                              (§%"9§ as §!"M§).§0!$§ = false;
                              continue loop0;
                           }
                        }
                     }
                     else
                     {
                        addr40:
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr45);
               }
               §§goto(addr115);
            }
            §§goto(addr117);
         }
         §§goto(addr40);
      }
      
      override protected function showTutorials() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = "ALL_EXTRABIRD";
         if(!(_loc2_ && _loc1_))
         {
            §8y§.§7"?§(§2"@§,_loc1_,true);
         }
         do
         {
            §8y§.showTutorials(§2"@§,true);
         }
         while(!_loc3_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§,K§);
            loop0:
            while(true)
            {
               §§push(§]"§.§?!H§);
               addr105:
               addr88:
               while(true)
               {
                  §§pop().state = §§pop();
                  while(true)
                  {
                     this.§7C§ = null;
                     addr93:
                     while(_loc2_ || _loc2_)
                     {
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§,K§);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(_loc1_ && _loc1_)
                     {
                        break;
                     }
                     §§pop().mCurrentPosition = §§pop();
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr105);
            }
         }
         while(true)
         {
            this.§@4§ = false;
            §§goto(addr88);
         }
      }
   }
}
