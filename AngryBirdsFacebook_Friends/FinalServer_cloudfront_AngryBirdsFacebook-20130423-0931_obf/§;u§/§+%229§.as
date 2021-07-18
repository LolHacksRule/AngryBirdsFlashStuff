package §;u§
{
   import §"a§.§!"J§;
   import §%!I§.§6"&§;
   import §%i§.§0!Y§;
   import §%i§.§^n§;
   import §,l§.§#!,§;
   import §,l§.§+I§;
   import §-p§.§4!`§;
   import §-r§.§!"M§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §4!<§.§%6§;
   import §4!<§.§&=§;
   import §4!<§.§'!S§;
   import §5!Y§.§3"H§;
   import §5!Y§.§8y§;
   import §5!Y§.§9"6§;
   import §8";§.§+d§;
   import §8m§.§&!e§;
   import §8m§.§7!>§;
   import §8m§.§;!`§;
   import §8m§.§;!e§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§3w§;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §<"F§.§"^§;
   import §<"F§.§6h§;
   import §<w§.§8p§;
   import §@!"§.§?l§;
   import §^"F§.§!!I§;
   import §^"F§.§4!2§;
   import §^"F§.§^"K§;
   import §`!6§.§>i§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.AngryBirds.friendsbar.§]a§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class §+"9§ extends StatePlay implements §4d§
   {
      
      private static const §;!m§:Number = -5000.0;
      
      private static const §!"$§:Number = 10000.0;
      
      private static const §8"U§:Number = 50;
      
      private static const §@"=§:Number = 0.05;
      
      public static var §%?§:String;
      
      public static var §8!]§:String = "";
      
      public static var §3n§:Number = 0;
      
      public static var § "U§:int = 0;
      
      public static const §!!'§:String = "4000-";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §;!m§ = -5 * 1000;
         }
         while(true)
         {
            §!"$§ = 10 * 1000;
            loop1:
            while(!_loc2_)
            {
               §8"U§ = 50;
               loop2:
               do
               {
                  §@"=§ = 0.05;
                  while(_loc1_)
                  {
                     §8!]§ = "";
                     while(_loc1_)
                     {
                        §3n§ = 0;
                        do
                        {
                           § "U§ = 0;
                           do
                           {
                              §!!'§ = "4000-";
                           }
                           while(_loc2_);
                           
                        }
                        while(_loc2_ && §+"9§);
                        
                        if(!(_loc2_ && _loc1_))
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
               while(_loc2_);
               
               return;
            }
         }
      }
      
      private var §@n§:String = "";
      
      private var §]w§:Number = -5000.0;
      
      private var §^-§:int = 0;
      
      private var §<"%§:Number = 0;
      
      private var §`"<§:Number = 0;
      
      private var §4'§:§6!K§;
      
      private var §[v§:Number;
      
      protected var § "1§:Number;
      
      protected var §1m§:Number;
      
      protected var §;"W§:§!!I§;
      
      protected var § =§:Boolean = false;
      
      protected var §`g§:§8p§;
      
      private var §6! §:Boolean = false;
      
      protected var §7!k§:§>i§;
      
      private var §"!s§:Boolean = false;
      
      private var §=!§:Boolean = false;
      
      private var §8U§:Number = 0;
      
      private var §;e§:Number = 0;
      
      private var §]1§:§6h§;
      
      private var §]"?§:int = 3000;
      
      private var §^!T§:Boolean = false;
      
      private var §;!l§:§3"H§;
      
      public function §+"9§(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(param1,param2);
         }
      }
      
      override protected function getGameLogicController(param1:§'!S§) : §4!`§
      {
         return new §!"M§(param1);
      }
      
      protected function fetchScoresForLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`g§ = §%"S§.§%P§.§;8§(LevelManager.§5!T§(LevelManager.§ T§).name,LevelManager.§ T§);
         }
      }
      
      public function get §>"X§() : §!!I§
      {
         return this.§;"W§;
      }
      
      protected function showScoresForLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§?l§.§ "G§ as §%"S§).§!n§(LevelManager.§ T§,this.§`g§);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.levelStarted();
            loop0:
            while(true)
            {
               §§push(this.§;"W§);
               loop1:
               while(true)
               {
                  §§pop().activate();
                  loop2:
                  while(true)
                  {
                     §!!I§.§&P§ = true;
                     loop3:
                     while(true)
                     {
                        §!!I§.§["@§ = false;
                        loop4:
                        while(true)
                        {
                           §@q§.§#!0§(§3w§.§#!S§,LevelManager.§ T§);
                           while(true)
                           {
                              §@q§.trackPageView(this,this.§8"3§());
                              loop6:
                              while(_loc2_ || _loc2_)
                              {
                                 this.fetchScoresForLevel();
                                 loop7:
                                 while(true)
                                 {
                                    this.showScoresForLevel();
                                    loop8:
                                    while(true)
                                    {
                                       this.§3"'§();
                                       while(true)
                                       {
                                          §§push(this.§;"W§);
                                          addr322:
                                          while(true)
                                          {
                                             §§push(false);
                                             addr323:
                                             while(true)
                                             {
                                                §§pop().§@3§ = §§pop();
                                                continue loop0;
                                             }
                                          }
                                          loop24:
                                          while(_loc2_ || _loc1_)
                                          {
                                             loop25:
                                             while(true)
                                             {
                                                §2"@§.getItemByName("Container_PowerUpButtons").setVisibility(false);
                                                loop26:
                                                while(_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(this.§4'§);
                                                   if(!_loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop27:
                                                         while(!_loc3_)
                                                         {
                                                            §§push(this.§4'§);
                                                            while(true)
                                                            {
                                                               §§pop().stop();
                                                               loop39:
                                                               while(true)
                                                               {
                                                                  this.§4'§ = null;
                                                                  addr187:
                                                                  loop42:
                                                                  while(true)
                                                                  {
                                                                     addr174:
                                                                     while(true)
                                                                     {
                                                                        this.§"!s§ = false;
                                                                        loop29:
                                                                        while(_loc2_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              this.§=!§ = false;
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop27;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 §%"9§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
                                                                                 loop31:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§ =§ = false;
                                                                                    continue loop30;
                                                                                    addr53:
                                                                                    if(!(_loc2_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc2_ || _loc3_))
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr30:
                                                                                          if(_loc3_ && _loc2_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
                                                                                                addr46:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc2_ || this))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc1_))
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            continue loop42;
                                                                                                         }
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      continue loop42;
                                                                                                      addr124:
                                                                                                   }
                                                                                                   §§goto(addr53);
                                                                                                }
                                                                                                continue loop31;
                                                                                                §§goto(addr30);
                                                                                             }
                                                                                             continue loop2;
                                                                                             addr39:
                                                                                          }
                                                                                          var _loc1_:* = LevelManager.§,m§ == 6;
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §2"@§.getItemByName("Button_PowerUp6").setVisibility(_loc1_);
                                                                                             §2"@§.getItemByName("TextField_PowerUpCount6").setVisibility(_loc1_);
                                                                                             §2"@§.getItemByName("PowerUpCount6_BG").setVisibility(_loc1_);
                                                                                             §2"@§.getItemByName("Movieclip_TntSliderBackground").setVisibility(_loc1_);
                                                                                             addr453:
                                                                                             addr459:
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   this.§0f§();
                                                                                                   if(_loc2_ || _loc3_)
                                                                                                   {
                                                                                                      if(!(_loc2_ || this))
                                                                                                      {
                                                                                                         §§goto(addr453);
                                                                                                      }
                                                                                                      return;
                                                                                                      addr413:
                                                                                                   }
                                                                                                   §§goto(addr453);
                                                                                                }
                                                                                                §§goto(addr459);
                                                                                             }
                                                                                             addr446:
                                                                                             §§goto(addr446);
                                                                                          }
                                                                                          §§goto(addr413);
                                                                                       }
                                                                                       loop35:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             addr245:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§;"W§);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   if(!(_loc3_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(this.§;"W§);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§pop().§-!T§();
                                                                                                            continue loop35;
                                                                                                         }
                                                                                                         addr312:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§pop().powerUpsUsable = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
                                                                                                                     addr308:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
                                                                                                                        break loop27;
                                                                                                                     }
                                                                                                                     break loop26;
                                                                                                                  }
                                                                                                                  addr318:
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         §§goto(addr323);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop39;
                                                                                                }
                                                                                                continue loop29;
                                                                                             }
                                                                                             addr103:
                                                                                          }
                                                                                          while(!_loc3_)
                                                                                          {
                                                                                             §§pop().§"" §();
                                                                                             continue loop24;
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       continue loop26;
                                                                                    }
                                                                                    §§goto(addr46);
                                                                                 }
                                                                              }
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§!!I§.§["@§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       addr233:
                                                                                       if(!(_loc2_ || _loc1_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(!§§pop());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             addr244:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                §§goto(addr245);
                                                                                             }
                                                                                          }
                                                                                          addr243:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr388);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr271:
                                                                                 }
                                                                                 §§goto(addr244);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§goto(addr271);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr243);
                                                                                 }
                                                                                 §§goto(addr233);
                                                                              }
                                                                              addr269:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr308);
                                                                           }
                                                                        }
                                                                        addr293:
                                                                        while(true)
                                                                        {
                                                                           §2"@§.getItemByName("Button_MightyEagle").setVisibility(true);
                                                                           break loop26;
                                                                        }
                                                                        continue loop42;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
                                                            §§goto(addr293);
                                                         }
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   §§goto(addr198);
                                                }
                                                while(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(§!!I§.§&P§);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr318);
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
         §§goto(addr187);
      }
      
      protected function §0f§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:MovieClip = null;
         if(!_loc3_)
         {
            this.§2P§();
         }
         while(true)
         {
            §§push(this.§9"%§);
            loop1:
            while(true)
            {
               §§push(§§pop().§7"T§);
               loop2:
               while(true)
               {
                  if(§§pop() == null)
                  {
                     addr145:
                  }
                  loop3:
                  while(true)
                  {
                     §§push(this.§9"%§);
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§push(§§pop().§7"T§);
                     if(_loc3_)
                     {
                        continue loop2;
                     }
                     §§push(§§pop().§+!!§());
                     loop4:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 addr138:
                                 while(true)
                                 {
                                    §§push(LevelManager.§ T§.indexOf(§!!'§) == -1);
                                    if(_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(!§§pop());
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                           while(§§pop())
                           {
                              while(true)
                              {
                                 this.§]1§ = new §6h§(this.§9"%§.§7"T§.§="U§);
                                 loop10:
                                 while(!_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr145);
                                    }
                                    §§push(this.§]1§);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(this.§9"%§.§7"T§.§5!4§);
                                       addr75:
                                       while(true)
                                       {
                                          §§pop().eggs = §§pop();
                                          addr76:
                                          while(!(_loc3_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§]1§);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(-70);
                                                   addr66:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr67:
                                                      while(true)
                                                      {
                                                         §§push(this.§]1§);
                                                         if(_loc2_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         continue loop15;
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                          }
                                          continue loop10;
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           return;
                        }
                     }
                  }
                  continue loop1;
                  return;
               }
            }
         }
      }
      
      private function §2P§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MovieClip = §2"@§.getItemByName("eggMovieClip").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
            if(!(_loc3_ || _loc1_))
            {
               break;
            }
         }
         var _loc2_:MovieClip = §2"@§.getItemByName("EggRaffleBasketContainer").mClip;
         if(_loc3_ || _loc2_)
         {
            while(_loc2_.numChildren > 0)
            {
               _loc2_.removeChildAt(0);
               if(!(_loc3_ || _loc1_))
               {
                  break;
               }
            }
         }
      }
      
      private function §0X§(param1:§"^§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§4^§);
         if(!(_loc7_ && this))
         {
            §§push(§§pop().substr(param1.§4^§.length - 2));
         }
         var _loc2_:* = §§pop();
         var _loc3_:MovieClip = §2"@§.getItemByName("eggMovieClip").mClip;
         §§push(§?q§);
         §§push("Wonderland_Egg");
         if(!(_loc7_ && this))
         {
            §§push(§§pop() + _loc2_);
         }
         var _loc5_:MovieClip;
         var _loc4_:Class;
         (_loc5_ = new (_loc4_ = §§pop().§ q§(§§pop()))()).gotoAndStop(1);
         if(_loc6_)
         {
            _loc5_.x = _loc3_.numChildren * _loc5_.width;
            do
            {
               _loc3_.addChild(_loc5_);
            }
            while(_loc7_ && this);
            
         }
      }
      
      protected function §3"'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§7!k§.levelStarted(this.§`g§,LevelManager.§ T§);
         }
      }
      
      override protected function stopSoundsOnLevelStart() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.stopSoundsOnLevelStart();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.setPowerupVisibility();
            while(true)
            {
               super.activate();
               while(!_loc2_)
               {
                  this.facebookActivate();
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      protected function §^!j§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:§;!`§ = null;
         var _loc4_:§7!>§ = null;
         if(_loc5_ || _loc1_)
         {
            §§push(LevelManager.§ T§);
            loop0:
            while(true)
            {
               §§push("3001-");
               loop1:
               while(true)
               {
                  §§push(§§pop().indexOf(§§pop()) > -1);
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr365:
                           loop25:
                           while(true)
                           {
                              §§push(LevelManager.§ T§);
                              addr331:
                              while(true)
                              {
                                 §§push("3000-");
                                 addr332:
                                 while(_loc5_ || _loc3_)
                                 {
                                    §§push(§§pop().indexOf(§§pop()) > -1);
                                    if(_loc6_ && _loc1_)
                                    {
                                       continue loop25;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr364:
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              _loc1_ = "";
                              loop4:
                              while(true)
                              {
                                 §§push(999);
                                 loop5:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(LevelManager.§ T§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push("3001-");
                                          if(!_loc6_)
                                          {
                                             if(§§pop().indexOf(§§pop()) <= -1)
                                             {
                                                §§push(§ "U§);
                                                continue loop5;
                                             }
                                             this.§@n§ = §;!e§.§["I§;
                                             §§push(LevelManager.§ T§);
                                             if(_loc5_)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push("3001-1");
                                                   loop14:
                                                   for(; §§pop().indexOf(§§pop()) <= -1; if(_loc6_ && _loc2_)
                                                   {
                                                      continue;
                                                   },if(!(_loc6_ && _loc2_))
                                                   {
                                                      if(§§pop().indexOf(§§pop()) <= -1)
                                                      {
                                                         addr188:
                                                         §§goto(addr189);
                                                         §§push(§;!e§.§="1§);
                                                      }
                                                      §§goto(addr257);
                                                   },§§goto(addr332))
                                                   {
                                                      §§push(LevelManager.§ T§);
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         §§push("3001-2");
                                                         if(!_loc5_)
                                                         {
                                                            break loop7;
                                                         }
                                                         continue;
                                                      }
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            _loc1_ = §§pop();
                                                            addr294:
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  this.§@n§ = §;!e§.§7!e§;
                                                                  addr220:
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           addr166:
                                                                           §§push(§8!]§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(§§pop() != getPauseState())
                                                                                 {
                                                                                    addr180:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §3n§ = 0;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          break loop16;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    addr180:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    _loc1_ = §§pop();
                                                                                    addr207:
                                                                                    if(!(_loc6_ && _loc1_))
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    addr295:
                                                                                    while(_loc5_ || _loc1_)
                                                                                    {
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              addr189:
                                                                           }
                                                                        }
                                                                        addr367:
                                                                        §§push(_loc1_);
                                                                        §§push("");
                                                                        break loop7;
                                                                     }
                                                                     break loop14;
                                                                  }
                                                                  addr257:
                                                                  while(true)
                                                                  {
                                                                     §§push(§;!e§.§];§);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr365);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc1_ = §§pop();
                                                            }
                                                            addr294:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr294);
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                §§goto(addr331);
                                             }
                                             §§goto(addr367);
                                          }
                                          break;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          addr369:
                                          _loc3_ = §@"M§.§^!5§(§;!e§.§6" §);
                                          if(_loc5_ || _loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   addr401:
                                                   §@"M§.§set §(§;!e§.§6" §,1,1);
                                                }
                                             }
                                             _loc4_ = §@"M§.§!8§(_loc1_,this.§@n§,3000,§;!e§.§6" §,_loc2_,0.75,§3n§);
                                             break loop2;
                                          }
                                          §§goto(addr401);
                                       }
                                       break loop2;
                                    }
                                 }
                              }
                           }
                        }
                        break;
                        §§goto(addr339);
                     }
                     return;
                  }
                  §§goto(addr364);
               }
            }
         }
         §§goto(addr177);
      }
      
      protected function §]!c§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7!>§ = null;
         if(_loc4_ || _loc2_)
         {
            §3n§ = 0;
         }
         var _loc1_:§;!`§ = §@"M§.§^!5§(§;!e§.§6" §);
         if(_loc4_)
         {
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.§ "?§(this.§@n§);
               addr51:
               if(!(_loc3_ && this))
               {
                  if(_loc2_ != null)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §3n§ = _loc2_.position;
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr94);
                  }
                  §@"M§.§]!n§(§;!e§.§6" §);
               }
            }
            addr94:
            return;
         }
         §§goto(addr51);
      }
      
      private function § "H§(param1:§&!e§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1.§+h§);
            loop0:
            while(true)
            {
               §§push(§;!e§.§<n§);
               addr112:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc4_ || this)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              continue loop2;
                           }
                           continue loop0;
                           addr94:
                        }
                     }
                  }
                  §§goto(addr122);
               }
            }
         }
         §§goto(addr161);
      }
      
      protected function facebookActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^!j§();
            while(true)
            {
               this.§7!k§.activate();
               while(true)
               {
                  §§push(this.§"!s§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §%"9§.addEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
                           addr338:
                           while(true)
                           {
                           }
                        }
                        addr332:
                     }
                     while(true)
                     {
                        §2"@§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
                        while(true)
                        {
                           §§push(§?l§.§'h§);
                           while(true)
                           {
                              §§push(§§pop().objects.mSardineCanAdded);
                              addr303:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 continue loop2;
                              }
                              addr297:
                              §§push(§?l§.§'h§);
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§push(§§pop().slingshot.mSlingShotState == §&=§.§+!`§);
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §2"@§.getItemByName("Container_MightyEagle").setVisibility(true);
                                       loop20:
                                       while(true)
                                       {
                                          addr208:
                                          while(true)
                                          {
                                             this.§[v§ = 2500;
                                             continue loop20;
                                          }
                                       }
                                    }
                                    §§goto(addr259);
                                    while(_loc2_ || _loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§pop();
                                          §§goto(addr176);
                                       }
                                       §§goto(addr318);
                                       §§goto(addr93);
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
         §§goto(addr51);
      }
      
      private function §!!d§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            this.§]"?§ -= 33;
            if(!_loc4_)
            {
               §§goto(addr31);
            }
            §§goto(addr39);
         }
         addr31:
         if(!this.§^!T§)
         {
            if(_loc3_)
            {
               this.§^!T§ = true;
               addr39:
               _loc1_ = §2"@§.getItemByName("eggMovieClip").mClip;
               if(!_loc4_)
               {
                  _loc2_ = 0;
               }
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     if(_loc2_ < _loc1_.numChildren)
                     {
                        (_loc1_.getChildAt(_loc2_) as MovieClip).gotoAndStop(2);
                        while(true)
                        {
                           _loc2_++;
                           if(!(_loc3_ || _loc2_))
                           {
                              break;
                           }
                           if(!(_loc4_ && _loc3_))
                           {
                              if(false)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr39);
         }
         if(this.§]"?§ <= 0)
         {
            if(_loc3_ || _loc2_)
            {
               (§%"9§ as §!"M§).§0!$§ = true;
            }
         }
      }
      
      protected function dimPowerUp() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
            loop0:
            while(true)
            {
               this.§#"Q§(this.§4'§);
               while(true)
               {
                  this.§4'§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
                  loop2:
                  for(; _loc1_ || _loc1_; while(!(_loc2_ && _loc1_))
                  {
                     continue loop0;
                  })
                  {
                     while(true)
                     {
                        §§push(this.§4'§);
                        while(true)
                        {
                           §§pop().delay = 2;
                           §§push(this.§4'§);
                           addr66:
                           continue loop2;
                           if(_loc1_)
                           {
                              §§pop().play();
                              if(!(_loc2_ && _loc2_))
                              {
                                 return;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr99);
      }
      
      protected function hidePowerUp(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§ =§ = true;
            while(true)
            {
               §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
               while(true)
               {
                  this.§#"Q§(this.§4'§);
                  loop2:
                  for(; !_loc3_; while(!(_loc3_ && param1))
                  {
                     §§goto(addr105);
                  })
                  {
                     this.§4'§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
                        "scaleX":0,
                        "scaleY":0
                     },null,0.5);
                     loop3:
                     while(true)
                     {
                        if(!param1)
                        {
                           §§push(this.§4'§);
                           loop4:
                           while(true)
                           {
                              §§pop().delay = 0.5;
                              loop5:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§4'§);
                                       loop7:
                                       while(true)
                                       {
                                          §§pop().play();
                                          addr74:
                                          addr96:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(this.§4'§);
                                                   if(_loc2_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop3;
                                             }
                                             continue loop5;
                                          }
                                          while(true)
                                          {
                                             §§pop().delay = 2;
                                             continue loop2;
                                          }
                                       }
                                       addr105:
                                    }
                                    return;
                                    addr59:
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr92);
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      private function §for§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>!%§ = true;
            loop0:
            while(true)
            {
               §2"@§ = new §`_§(this);
               while(true)
               {
                  §2"@§.init(§ "<§.§%I§.Views.View_FacebookLevelPlay[0]);
                  loop2:
                  for(; !(_loc2_ && this); if(_loc2_ && _loc1_)
                  {
                     continue;
                  },if(_loc2_)
                  {
                     continue loop0;
                  },§§goto(addr44))
                  {
                     this.§7!k§ = new §>i§(§2"@§);
                     while(true)
                     {
                        this.§1m§ = (§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).width - 25;
                        loop4:
                        while(!_loc2_)
                        {
                           this.§ "1§ = (§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).x;
                           while(true)
                           {
                              this.§;"W§ = new §!!I§(§2"@§);
                              loop6:
                              while(_loc1_)
                              {
                                 §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
                                 loop7:
                                 while(_loc1_)
                                 {
                                    while(true)
                                    {
                                       § "+§();
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop6;
                                       }
                                       continue loop7;
                                    }
                                    return;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §-+§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§`g§.data;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  if(_loc2_.u == param1)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr66:
                     if(_loc2_.a)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           break;
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr66);
            }
            return null;
         }
         return _loc2_.a;
      }
      
      private function §?_§(param1:int) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc2_:* = param1.toString();
         var _loc3_:Array = [];
         if(!_loc8_)
         {
            §§push(_loc2_);
            loop0:
            for(; §§pop().length % 3 > 0; while(true)
            {
               §§push(_loc2_);
               if(_loc7_)
               {
                  §§push(§§pop().slice(_loc2_.length % 3));
               }
               if(_loc8_ && _loc3_)
               {
                  break;
               }
               _loc2_ = §§pop();
               if(!_loc8_)
               {
                  break loop0;
               }
            })
            {
               if(!(_loc7_ || _loc2_))
               {
                  continue;
               }
            }
            loop2:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc7_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc7_)
                        {
                           addr134:
                           var _loc5_:int = 0;
                           if(_loc7_ || _loc2_)
                           {
                              var _loc6_:* = _loc3_;
                              if(_loc8_)
                              {
                              }
                              while(§§hasnext(_loc6_,_loc5_))
                              {
                                 §§push(§§nextvalue(_loc5_,_loc6_));
                                 if(_loc7_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc8_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc2_);
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(§§pop() + (_loc4_ + ","));
                                    }
                                 }
                                 _loc2_ = §§pop();
                              }
                           }
                           if(_loc8_)
                           {
                           }
                           §§goto(addr207);
                        }
                        §§push(_loc2_);
                        if(!_loc8_)
                        {
                           §§goto(addr192);
                        }
                        break;
                     }
                     _loc3_.push(_loc2_.substr(0,3));
                     if(!_loc8_)
                     {
                        §§push(_loc2_);
                        if(!(_loc8_ && this))
                        {
                           §§push(3);
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop().substr(§§pop()));
                              if(!(_loc8_ && _loc3_))
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc8_)
                                 {
                                    if(false)
                                    {
                                       continue loop2;
                                    }
                                    continue;
                                 }
                                 §§goto(addr134);
                              }
                           }
                           §§goto(addr192);
                        }
                        addr192:
                        §§push(§§pop().substr(0,_loc2_.length - 1));
                        if(!(_loc8_ && param1))
                        {
                           break;
                        }
                        addr207:
                        return _loc2_;
                     }
                     §§goto(addr134);
                  }
                  break;
               }
               _loc2_ = §§pop();
               §§goto(addr134);
            }
         }
         while(true)
         {
            _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
            §§goto(addr125);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.keyUp(param1);
            while(!AngryBirdsFP11.§#V§)
            {
               if(_loc4_ || param1)
               {
                  return;
               }
               if(!_loc3_)
               {
                  addr73:
                  break;
               }
            }
            loop1:
            while(true)
            {
               var _loc2_:* = param1.keyCode;
               if(!(_loc3_ && this))
               {
                  if(Keyboard.M === _loc2_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           addr123:
                        }
                     }
                     else
                     {
                        addr120:
                        §§push(1);
                        if(!_loc3_)
                        {
                           §§goto(addr123);
                        }
                     }
                     addr128:
                     switch(§§pop())
                     {
                        case 0:
                           this.§6! § = true;
                           break;
                        case 1:
                           §?l§.§'h§.§4I§();
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(true)
                              {
                                 break loop1;
                              }
                              continue;
                           }
                     }
                     break;
                  }
                  if(Keyboard.K === _loc2_)
                  {
                     §§goto(addr120);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr128);
               }
               §§goto(addr120);
            }
            return;
         }
         §§goto(addr73);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(§8y§.isOpen);
            if(_loc5_)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(!(_loc4_ && this))
                        {
                           addr43:
                           §§push(§9"6§.§,2§());
                           if(_loc5_)
                           {
                              addr47:
                              §§push(Boolean(§§pop()));
                              if(_loc5_ || _loc2_)
                              {
                                 addr55:
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       return §+d§.STATE_STATUS_RUNNING;
                                    }
                                 }
                              }
                              addr73:
                              var _loc2_:Boolean = §§pop();
                              addr72:
                              if(_loc5_)
                              {
                                 §§push(§?l§.§'h§);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§§pop().objects);
                                    addr509:
                                    while(true)
                                    {
                                       §§push(§§pop().isPigsAlive());
                                       addr510:
                                       loop2:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                this.disablePowerupMenu();
                                                addr513:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr511:
                                          }
                                          while(true)
                                          {
                                             if(§9!h§)
                                             {
                                                while(true)
                                                {
                                                   this.§%!W§();
                                                   addr505:
                                                   while(true)
                                                   {
                                                      §§push(this.§;"W§);
                                                      addr498:
                                                      while(true)
                                                      {
                                                         §§pop().§9!P§();
                                                         addr499:
                                                         while(true)
                                                         {
                                                            §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                                                            addr494:
                                                            while(true)
                                                            {
                                                               §§push(this.§ =§);
                                                               addr481:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.hidePowerUp(this.§;"W§.§@3§);
                                                                        addr487:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr482:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr335:
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(this.§=!§);
                                                   loop42:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop43:
                                                         while(true)
                                                         {
                                                            loop44:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr272:
                                                                        if(!(_loc5_ || _loc2_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§[v§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop() - param1);
                                                                           }
                                                                           §§pop().§[v§ = §§pop();
                                                                           loop45:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(this.§[v§ < 0);
                                                                                    loop47:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         loop40:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§=!§);
                                                                                                            loop48:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  continue loop30;
                                                                                                               }
                                                                                                               if(_loc5_ || param1)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(this.§[!b§());
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              addr106:
                                                                                                                              addr229:
                                                                                                                              addr106:
                                                                                                                           }
                                                                                                                           §§goto(addr106);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                           loop14:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr457:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr459:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(!§9!h§);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr458:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr431:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§5!_§(param1);
                                                                                                                                             addr435:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr432:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(mNextState == § if§.STATE_NAME);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             addr400:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   loop25:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      loop26:
                                                                                                                                                      while(_loc5_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(mNextState == §6"&§.STATE_NAME);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr361:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§"!s§);
                                                                                                                                                                        loop35:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop25;
                                                                                                                                                                           }
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop36:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §%"9§.addEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                }
                                                                                                                                                                                                this.§"!s§ = true;
                                                                                                                                                                                                while(!(_loc4_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                                                                      if(_loc5_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop35;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop43;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop35;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_ && _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop36;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr335);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr499);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr487);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr314:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr318);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr505);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr391:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr494);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr487);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§"@§(param1);
                                                                                                                                                                                       addr469:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§7"'§(param1);
                                                                                                                                                                                          break loop29;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr477:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr432);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr304);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr458);
                                                                                                                                                                     }
                                                                                                                                                                     addr362:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     if(mNextState != §>!w§.STATE_NAME)
                                                                                                                                                                     {
                                                                                                                                                                        if(mNextState)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       return §+d§.STATE_STATUS_COMPLETED;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr113:
                                                                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§[!b§());
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc5_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop48;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc5_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop47;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop14;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr77:
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr143:
                                                                                                                                                                                       if(!(_loc4_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr226);
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc5_ || param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop45;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             return §+d§.STATE_STATUS_COMPLETED;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr469);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr229);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr314);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr469);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr326);
                                                                                                                                                                              }
                                                                                                                                                                              else if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr511);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr77);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop29;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr229);
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr513);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr229);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr113);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr469);
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                               addr514:
                                                                                                                                                               §§push(super.run(param1));
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               var _loc3_:* = §§pop();
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  addr853:
                                                                                                                                                                  §§push(!this.§ =§);
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     addr840:
                                                                                                                                                                     if(§§pop() && !§?l§.§'h§.slingshot.birdsAvailable)
                                                                                                                                                                     {
                                                                                                                                                                        addr841:
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           addr849:
                                                                                                                                                                           this.§;"W§.setPowerupActive(§4!2§.§`!4§.§,§,false);
                                                                                                                                                                           addr810:
                                                                                                                                                                           addr848:
                                                                                                                                                                           addr845:
                                                                                                                                                                           addr850:
                                                                                                                                                                           §§push(this.§;"W§);
                                                                                                                                                                           §§push(§4!2§.§<"O§.§,§);
                                                                                                                                                                           §§push(false);
                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().setPowerupActive(§§pop(),§§pop());
                                                                                                                                                                              addr832:
                                                                                                                                                                              §§push(this.§;"W§);
                                                                                                                                                                              §§push(§4!2§.§3"$§.§,§);
                                                                                                                                                                              §§push(false);
                                                                                                                                                                              if(!(_loc4_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().setPowerupActive(§§pop(),§§pop());
                                                                                                                                                                                 addr804:
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr742:
                                                                                                                                                                                    §§push(this.§;"W§);
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§4!2§.§%!U§.§,§);
                                                                                                                                                                                          if(_loc5_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc4_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(false);
                                                                                                                                                                                                   if(_loc5_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().setPowerupActive(§§pop(),§§pop());
                                                                                                                                                                                                      addr774:
                                                                                                                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc4_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr729:
                                                                                                                                                                                                            §§push(this.§ =§);
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr735:
                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr737:
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  addr738:
                                                                                                                                                                                                                  §§push(§?l§.§'h§.slingshot);
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr722:
                                                                                                                                                                                                                     if(§§pop().mSlingShotState == §&=§.§+!`§)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr723:
                                                                                                                                                                                                                        this.hidePowerUp(this.§;"W§.§@3§);
                                                                                                                                                                                                                        addr728:
                                                                                                                                                                                                                        §§push(this.§;"W§);
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().§9!P§();
                                                                                                                                                                                                                              addr710:
                                                                                                                                                                                                                              §§push(this.§ =§);
                                                                                                                                                                                                                              if(_loc5_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr677:
                                                                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr679:
                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                       addr682:
                                                                                                                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc5_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr610:
                                                                                                                                                                                                                                             §§push(§?l§.§'h§);
                                                                                                                                                                                                                                             if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr626:
                                                                                                                                                                                                                                                   §§push((§§pop() as §%6§).§+"3§.§+"#§(§4!2§.§-Y§.§1!#§));
                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr630:
                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                      if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr643:
                                                                                                                                                                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc5_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                           addr665:
                                                                                                                                                                                                                                                                           §§push(§?l§.§'h§);
                                                                                                                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push((§§pop() as §%6§).§+"3§);
                                                                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop().§0-§);
                                                                                                                                                                                                                                                                                 if(_loc5_ || this)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr556:
                                                                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc5_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc5_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc4_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr583);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr853);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr838);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr840);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr677);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr630);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr643);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr626);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr556);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr626);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr610);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr858);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr735);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr679);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr583:
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.§%!W§();
                                                                                                                                                                                                                                                                           addr593:
                                                                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr841);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr524);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr738);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr682);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr665);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr774);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr723);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr593);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr524:
                                                                                                                                                                                                                                                               return §+d§.STATE_STATUS_RUNNING;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr840);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr735);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr677);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr737);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr858);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr737);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr728);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr710);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr722);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr630);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr679);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr810);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr742);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr710);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr858);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr722);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr737);
                                                                                                                                                                                                            addr788:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr832);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr804);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr832);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr848);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr810);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr832);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr845);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr832);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr850);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr810);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr849);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr859);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr729);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr858);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr788);
                                                                                                                                                            }
                                                                                                                                                            addr360:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr459);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr435);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr360);
                                                                                                                                             }
                                                                                                                                             addr218:
                                                                                                                                             if(!(_loc5_ || param1))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr226:
                                                                                                                                                return §+d§.STATE_STATUS_COMPLETED;
                                                                                                                                             }
                                                                                                                                             §§goto(addr229);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr455:
                                                                                                                     }
                                                                                                                     §§goto(addr514);
                                                                                                                  }
                                                                                                                  §§goto(addr431);
                                                                                                               }
                                                                                                               §§goto(addr318);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr361);
                                                                                                   }
                                                                                                   if(!(_loc5_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop44;
                                                                                                   }
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop42;
                                                                                                   }
                                                                                                   §§goto(addr218);
                                                                                                }
                                                                                                §§goto(addr191);
                                                                                             }
                                                                                             §§goto(addr457);
                                                                                          }
                                                                                          §§goto(addr400);
                                                                                       }
                                                                                       §§goto(addr317);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr362);
                                                                              }
                                                                              §§goto(addr391);
                                                                           }
                                                                        }
                                                                        §§goto(addr482);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr106);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr481);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(this.§;"W§);
                                                if(!_loc4_)
                                                {
                                                   §§pop().run(param1);
                                                   §§goto(addr477);
                                                }
                                                else
                                                {
                                                   §§goto(addr498);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr499);
                           }
                           §§goto(addr55);
                        }
                        §§push(this.§7!k§.run(param1));
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr72);
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr47);
                  }
                  §§goto(addr55);
               }
            }
            §§goto(addr47);
         }
         §§goto(addr43);
      }
      
      protected function disablePowerupMenu() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^"K§ = null;
         for each(_loc1_ in §4!2§.§1!V§)
         {
            if(!_loc5_)
            {
               if(!_loc1_.§9"7§)
               {
                  continue;
               }
               if(_loc5_)
               {
                  continue;
               }
            }
            §2"@§.getItemByName(_loc1_.§#;§).setEnabled(false);
         }
         if(!(_loc5_ && this))
         {
            this.§;"W§.§9!P§();
         }
         do
         {
            §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         }
         while(!_loc4_);
         
      }
      
      private function §%!W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§;"W§);
            while(true)
            {
               §§push(§4!2§.§`!4§.§,§);
               addr156:
               while(true)
               {
                  §§push(false);
                  addr157:
                  while(true)
                  {
                     §§pop().setPowerupActive(§§pop(),§§pop());
                     addr158:
                     loop3:
                     while(true)
                     {
                        §§push(this.§;"W§);
                        addr143:
                        while(true)
                        {
                           §§push(§4!2§.§<"O§.§,§);
                           addr146:
                           while(true)
                           {
                              §§push(false);
                              addr147:
                              while(true)
                              {
                                 §§pop().setPowerupActive(§§pop(),§§pop());
                                 addr148:
                                 while(!_loc2_)
                                 {
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               addr115:
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§push(§4!2§.§3"$§.§,§);
               loop10:
               while(true)
               {
                  if(!_loc2_)
                  {
                     §§push(false);
                     loop11:
                     while(true)
                     {
                        §§pop().setPowerupActive(§§pop(),§§pop());
                        loop12:
                        while(true)
                        {
                           §§push(this.§;"W§);
                           addr88:
                           addr113:
                           loop13:
                           for(; !(_loc2_ && this); §§push(this.§;"W§),if(_loc2_ && this)
                           {
                              continue;
                           },§§goto(addr38))
                           {
                              §§push(§4!2§.§%!U§.§,§);
                              while(true)
                              {
                                 §§push(false);
                                 §§push(§4!2§.§8"1§.§,§);
                                 addr38:
                                 continue loop11;
                                 if(!(_loc1_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop10;
                                 }
                                 if(!_loc2_)
                                 {
                                    §§push(false);
                                    if(!_loc1_)
                                    {
                                       continue loop11;
                                    }
                                    if(_loc1_ || _loc1_)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§pop().setPowerupActive(§§pop(),§§pop());
                                          if(_loc1_)
                                          {
                                             if(_loc1_)
                                             {
                                                return;
                                             }
                                             §§goto(addr148);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop13;
                                                }
                                                continue loop12;
                                             }
                                             §§goto(addr146);
                                             addr107:
                                          }
                                          §§goto(addr146);
                                       }
                                       else
                                       {
                                          §§goto(addr157);
                                       }
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr146);
                              }
                           }
                           while(!_loc2_)
                           {
                              §§goto(addr115);
                              §§goto(addr88);
                           }
                           §§goto(addr143);
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr156);
                  }
                  §§goto(addr157);
               }
            }
         }
         while(true)
         {
            §§goto(addr113);
         }
      }
      
      private function §"@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§8U§);
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§;e§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§;e§ = §§pop();
                  continue loop0;
               }
            }
            addr20:
            return;
            addr77:
         }
         while(true)
         {
            §§push(this.§;e§);
            if(_loc3_)
            {
               if(§§pop() > §8"U§)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  addr72:
                  while(!_loc2_)
                  {
                     this.§;e§ = 0;
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
                  §§goto(addr78);
               }
               §§goto(addr20);
            }
            else
            {
               §§goto(addr77);
            }
         }
      }
      
      protected function §[!b§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§?l§.§'h§);
            loop0:
            while(true)
            {
               §§push((§§pop() as §%6§).§+"3§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§each §);
                  if(!(_loc2_ && this))
                  {
                     §§push(Boolean(§§pop()));
                     do
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr132:
                              while(true)
                              {
                                 §§push(!this.§;!l§);
                              }
                           }
                           addr131:
                        }
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    this.§;!l§ = §9"6§.§'!o§();
                                    addr114:
                                    while(true)
                                    {
                                       §§push(§?l§.§'h§);
                                       continue loop0;
                                    }
                                    addr114:
                                 }
                                 §§goto(addr114);
                              }
                              else
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§?l§.§'h§);
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §§push((§§pop() as §%6§).§+"3§);
                                    if(_loc2_)
                                    {
                                       while(!_loc2_)
                                       {
                                          §§pop().addEventListener(Event.COMPLETE,this.§`"'§);
                                          if(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                break loop5;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr114);
                                       }
                                       continue loop1;
                                    }
                                    §§push(§§pop().§each §);
                                    if(!_loc2_)
                                    {
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(!§§pop());
                                    }
                                    if(_loc1_)
                                    {
                                       break loop3;
                                    }
                                 }
                                 §§goto(addr132);
                              }
                           }
                        }
                     }
                     while(!(_loc1_ || _loc1_));
                     
                     return §§pop();
                  }
                  §§goto(addr131);
               }
            }
         }
         §§goto(addr114);
      }
      
      private function §`"'§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            (§?l§.§'h§ as §%6§).§+"3§.removeEventListener(Event.COMPLETE,this.§`"'§);
            while(true)
            {
               this.§;!l§.close();
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§;!l§ = null;
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      private function §null §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!§ = true;
         }
         do
         {
            §%"9§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
         }
         while(!_loc2_);
         
      }
      
      override protected function levelCompleted() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super.levelCompleted();
         }
         §§push(LevelManager.§ T§);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §%"9§.getScore();
         if(!_loc5_)
         {
            §@q§.§#!0§(§3w§.§>!P§,_loc1_,_loc2_);
         }
         var _loc3_:Array = (§?l§.§'h§ as §%6§).§'!>§();
         var _loc4_:String = JSON.stringify(_loc3_);
         if(_loc6_ || this)
         {
            §@q§.§'!!§(_loc3_,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         if(_loc7_)
         {
            if(param1 == 1)
            {
               if(_loc7_ || param3)
               {
                  §§push(§?l§.§'h§);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop().slingshot);
                     if(!(_loc6_ && param3))
                     {
                        if(!§§pop().mDragging)
                        {
                           while(true)
                           {
                              §§push(§?l§.§'h§);
                              if(_loc7_)
                              {
                                 §§pop().camera.stopDragging();
                                 if(_loc7_)
                                 {
                                    if(_loc6_ && param1)
                                    {
                                       break;
                                    }
                                    var _loc5_:* = param2;
                                    if(!(_loc6_ && param3))
                                    {
                                       §§push("showTutorial");
                                       if(!_loc6_)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc6_ && this))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(0);
                                                   if(!(_loc7_ || param2))
                                                   {
                                                      addr1902:
                                                   }
                                                }
                                                else
                                                {
                                                   addr1710:
                                                   §§push(15);
                                                   if(_loc7_)
                                                   {
                                                      addr1713:
                                                   }
                                                   else
                                                   {
                                                      addr1769:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push("PAUSE");
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc7_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(1);
                                                            if(_loc7_ || this)
                                                            {
                                                               §§goto(addr2126);
                                                            }
                                                            addr1838:
                                                            addr2126:
                                                            loop1:
                                                            while(true)
                                                            {
                                                               loop9:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     this.showTutorials();
                                                                     break loop1;
                                                                     addr1289:
                                                                  case 1:
                                                                     §+"9§.§8!]§ = getPauseState();
                                                                     mNextState = getPauseState();
                                                                     addr1268:
                                                                     (§?l§.§'h§ as §%6§).§+"3§.§]W§();
                                                                     break loop1;
                                                                     addr1265:
                                                                     addr1275:
                                                                     addr1269:
                                                                     addr1283:
                                                                  case 2:
                                                                     §+"9§.§8!]§ = STATE_NAME;
                                                                     §-!v§.§^!$§();
                                                                     mNextState = §-!v§.STATE_NAME;
                                                                     addr1250:
                                                                     break loop1;
                                                                     addr1250:
                                                                     addr1254:
                                                                     addr1261:
                                                                  case 3:
                                                                     §8y§.§2!C§();
                                                                     if(!_loc6_)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     break loop1;
                                                                  case 4:
                                                                     §§push(§?l§.§'h§);
                                                                     if(!(_loc6_ && param3))
                                                                     {
                                                                        §§push((§§pop() as §%6§).§+"3§);
                                                                        if(!(_loc6_ && param3))
                                                                        {
                                                                           addr1233:
                                                                           if(§§pop().useMightyEagle())
                                                                           {
                                                                              addr1234:
                                                                              this.useMightyEagle();
                                                                           }
                                                                           break loop1;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1265);
                                                                     }
                                                                     §§goto(addr1268);
                                                                  case 5:
                                                                     addr1202:
                                                                     addr1203:
                                                                     if(!this.§;"W§.§@3§)
                                                                     {
                                                                        addr1204:
                                                                        §2"@§.getItemByName("Container_PowerUpButtons").setVisibility(true);
                                                                     }
                                                                     addr1195:
                                                                     this.§;"W§.§"" §();
                                                                     break loop1;
                                                                     addr1192:
                                                                     addr1196:
                                                                  case 6:
                                                                  case 7:
                                                                  case 8:
                                                                  case 9:
                                                                  case 10:
                                                                     addr1179:
                                                                     §§push(this.§;"W§);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        addr1190:
                                                                        §§pop().powerUpsUsable = this.§;"W§.usePowerup(param2);
                                                                        addr1151:
                                                                        §§push(this.§;"W§.powerUpsUsable);
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              addr1159:
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                                                                                 addr1171:
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    this.dimPowerUp();
                                                                                    addr1146:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1250);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1275);
                                                                              }
                                                                           }
                                                                           break loop1;
                                                                        }
                                                                        addr1191:
                                                                        addr1189:
                                                                        addr1188:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1202);
                                                                     }
                                                                     §§goto(addr1203);
                                                                  case 11:
                                                                     addr1127:
                                                                     addr1126:
                                                                     addr1121:
                                                                     addr1129:
                                                                     addr1125:
                                                                     addr1128:
                                                                     addr1124:
                                                                     if((_loc4_ = int(§#!,§.§&"5§.§]![§(§4!2§.§`!4§.§1!#§))) <= 0)
                                                                     {
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           §2"@§.getItemByName("MovieClip_GetMore1").setVisibility(true);
                                                                        }
                                                                        (§2"@§.getItemByName("MovieClip_GetMore1") as §^n§).§6",§ = true;
                                                                        (§2"@§.getItemByName("MovieClip_GetMore1") as §^n§).§!!a§("Start");
                                                                        addr1142:
                                                                        addr1115:
                                                                     }
                                                                     break loop1;
                                                                  case 12:
                                                                     addr1088:
                                                                     addr1089:
                                                                     addr1091:
                                                                     addr1090:
                                                                     addr1086:
                                                                     addr1087:
                                                                     addr1083:
                                                                     if((_loc4_ = int(§#!,§.§&"5§.§]![§(§4!2§.§<"O§.§1!#§))) <= 0)
                                                                     {
                                                                        addr1092:
                                                                        §2"@§.getItemByName("MovieClip_GetMore2").setVisibility(true);
                                                                        (§2"@§.getItemByName("MovieClip_GetMore2") as §^n§).§6",§ = true;
                                                                        addr1097:
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           (§2"@§.getItemByName("MovieClip_GetMore2") as §^n§).§!!a§("Start");
                                                                           break;
                                                                        }
                                                                        break loop1;
                                                                        addr1097:
                                                                     }
                                                                     break loop1;
                                                                  case 13:
                                                                     addr1027:
                                                                     §§push(_loc4_ = int(§#!,§.§&"5§.§]![§(§4!2§.§3"$§.§1!#§)));
                                                                     §§push(0);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           addr1037:
                                                                           §2"@§.getItemByName("MovieClip_GetMore3").setVisibility(true);
                                                                           (§2"@§.getItemByName("MovieClip_GetMore3") as §^n§).§6",§ = true;
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              (§2"@§.getItemByName("MovieClip_GetMore3") as §^n§).§!!a§("Start");
                                                                              addr999:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1146);
                                                                           }
                                                                           addr1042:
                                                                        }
                                                                        break loop1;
                                                                     }
                                                                     §§goto(addr1127);
                                                                     break;
                                                                  case 14:
                                                                     addr938:
                                                                     §§push(§#!,§.§&"5§);
                                                                     if(_loc7_)
                                                                     {
                                                                        addr943:
                                                                        §§push(§4!2§.§8"1§.§1!#§);
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           addr954:
                                                                           §§push(§§pop().§]![§(§§pop()));
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              addr957:
                                                                              §§push(§§pop());
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    addr967:
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          addr982:
                                                                                          §§push(0);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(§§pop() <= §§pop())
                                                                                             {
                                                                                                addr985:
                                                                                                §2"@§.getItemByName("MovieClip_GetMore4").setVisibility(true);
                                                                                                (§2"@§.getItemByName("MovieClip_GetMore4") as §^n§).§6",§ = true;
                                                                                                (§2"@§.getItemByName("MovieClip_GetMore4") as §^n§).§!!a§("Start");
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr932:
                                                                                                addr990:
                                                                                             }
                                                                                             break loop1;
                                                                                          }
                                                                                          §§goto(addr1027);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1126);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1088);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1089);
                                                                              }
                                                                              §§goto(addr1091);
                                                                           }
                                                                           §§goto(addr1090);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1086);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1027);
                                                                     }
                                                                     §§goto(addr1027);
                                                                  case 15:
                                                                     addr861:
                                                                     §§push(§#!,§.§&"5§);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        addr871:
                                                                        §§push(§4!2§.§%!U§.§1!#§);
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§push(§§pop().§]![§(§§pop()));
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr889:
                                                                                 §§push(int(§§pop()));
                                                                                 if(!(_loc6_ && param2))
                                                                                 {
                                                                                    addr897:
                                                                                    §§push(_loc4_ = §§pop());
                                                                                    if(_loc6_ && param2)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr905:
                                                                                    if(§§pop() <= 0)
                                                                                    {
                                                                                       addr907:
                                                                                       §2"@§.getItemByName("MovieClip_GetMore5").setVisibility(true);
                                                                                       (§2"@§.getItemByName("MovieClip_GetMore5") as §^n§).§6",§ = true;
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          (§2"@§.getItemByName("MovieClip_GetMore5") as §^n§).§!!a§("Start");
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr798:
                                                                                                break loop1;
                                                                                             }
                                                                                             §§goto(addr1191);
                                                                                          }
                                                                                          break loop1;
                                                                                       }
                                                                                       §§goto(addr1097);
                                                                                       addr912:
                                                                                    }
                                                                                    §§goto(addr798);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr954);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr1027);
                                                                              }
                                                                              §§goto(addr1027);
                                                                           }
                                                                           §§goto(addr905);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr943);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr1121);
                                                                     }
                                                                     §§goto(addr1127);
                                                                  case 16:
                                                                     addr803:
                                                                     §§push(this.§;"W§);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        addr813:
                                                                        §§push(this.§;"W§);
                                                                        §§push(param2);
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           addr821:
                                                                           §§push(§§pop().usePowerup(§§pop()));
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop().powerUpsUsable = §§pop();
                                                                              addr824:
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr751:
                                                                                 §§push(this.§;"W§);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    addr759:
                                                                                    §§push(§§pop().powerUpsUsable);
                                                                                    if(!(_loc6_ && param3))
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             loop5:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(_loc7_ || param1)
                                                                                                   {
                                                                                                      addr778:
                                                                                                      §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ && param2))
                                                                                                         {
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               this.dimPowerUp();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_ && param3)
                                                                                                                  {
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr740:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1092);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr985);
                                                                                                         }
                                                                                                         §§goto(addr778);
                                                                                                      }
                                                                                                      break loop9;
                                                                                                      addr783:
                                                                                                   }
                                                                                                   §§goto(addr1269);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr999);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          break loop1;
                                                                                       }
                                                                                       §§goto(addr1233);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1151);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1179);
                                                                                 }
                                                                                 §§goto(addr1202);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr912);
                                                                              }
                                                                           }
                                                                           §§goto(addr1190);
                                                                        }
                                                                        §§goto(addr1189);
                                                                     }
                                                                     §§goto(addr1195);
                                                                  case 17:
                                                                     addr659:
                                                                     §§push(§#!,§.§&"5§);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        if(_loc7_ || param2)
                                                                        {
                                                                           addr676:
                                                                           §§push(§4!2§.§!! §.§1!#§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr679:
                                                                              §§push(§§pop().§]![§(§§pop()));
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(!(_loc6_ && param2))
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       if(!(_loc7_ || param1))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          addr706:
                                                                                          §§push(_loc4_ = §§pop());
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr710:
                                                                                             §§push(0);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(_loc7_ || param3)
                                                                                                {
                                                                                                   if(§§pop() <= §§pop())
                                                                                                   {
                                                                                                      addr720:
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §2"@§.getItemByName("MovieClip_GetMore6").setVisibility(true);
                                                                                                            addr734:
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               (§2"@§.getItemByName("MovieClip_GetMore6") as §^n§).§6",§ = true;
                                                                                                               addr646:
                                                                                                               if(!(_loc6_ && param3))
                                                                                                               {
                                                                                                                  (§2"@§.getItemByName("MovieClip_GetMore6") as §^n§).§!!a§("Start");
                                                                                                                  addr620:
                                                                                                                  break loop1;
                                                                                                                  addr637:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr1254);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr1234);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr985);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr907);
                                                                                                      }
                                                                                                      §§goto(addr1250);
                                                                                                   }
                                                                                                   §§goto(addr620);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1027);
                                                                                             }
                                                                                             §§goto(addr1129);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr889);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1087);
                                                                                       }
                                                                                       §§goto(addr1088);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1125);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1128);
                                                                              }
                                                                              §§goto(addr967);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1124);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr938);
                                                                        }
                                                                        §§goto(addr1027);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr861);
                                                                     }
                                                                  case 18:
                                                                     §2"@§.getItemByName("MovieClip_GetMore6").setVisibility(false);
                                                                     break loop1;
                                                                     addr628:
                                                                  case 19:
                                                                     addr572:
                                                                     §§push(§#!,§.§&"5§);
                                                                     if(!(_loc6_ && param3))
                                                                     {
                                                                        addr582:
                                                                        §§push(§§pop().§]![§(§4!2§.§6"O§.§1!#§));
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(_loc7_)
                                                                           {
                                                                              addr588:
                                                                              if(_loc7_ || param2)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    addr599:
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr602:
                                                                                       §§push(0);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(§§pop() <= §§pop())
                                                                                          {
                                                                                             addr605:
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §2"@§.getItemByName("MovieClip_GetMore").setVisibility(true);
                                                                                                addr612:
                                                                                                if(_loc7_ || param3)
                                                                                                {
                                                                                                   (§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§6",§ = true;
                                                                                                   addr559:
                                                                                                   if(!(_loc6_ && param2))
                                                                                                   {
                                                                                                      (§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§!!a§("Start");
                                                                                                      addr548:
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr1204);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr932);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1142);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr637);
                                                                                             }
                                                                                          }
                                                                                          break loop1;
                                                                                       }
                                                                                       §§goto(addr897);
                                                                                       §§goto(addr1192);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1027);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr602);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr679);
                                                                              }
                                                                           }
                                                                           §§goto(addr599);
                                                                        }
                                                                        §§goto(addr588);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr659);
                                                                     }
                                                                  case 20:
                                                                     §§push(this.§;"W§);
                                                                     loop8:
                                                                     while(!_loc6_)
                                                                     {
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§push(this.§;"W§);
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(param2);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().usePowerup(§§pop()));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr524:
                                                                                       §§pop().powerUpsUsable = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             if(_loc7_ || param3)
                                                                                             {
                                                                                                §§push(this.§;"W§);
                                                                                                if(!(_loc7_ || param3))
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop().powerUpsUsable);
                                                                                                   if(!(_loc6_ && param2))
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         addr490:
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
                                                                                                            this.dimPowerUp();
                                                                                                            addr497:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr990);
                                                                                                         }
                                                                                                      }
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   §§goto(addr759);
                                                                                                   §§goto(addr985);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr803);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr740);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr612);
                                                                                          }
                                                                                          §§goto(addr524);
                                                                                       }
                                                                                       addr525:
                                                                                    }
                                                                                    §§goto(addr821);
                                                                                 }
                                                                                 §§goto(addr813);
                                                                              }
                                                                              §§goto(addr1188);
                                                                           }
                                                                           §§goto(addr813);
                                                                        }
                                                                        §§goto(addr1190);
                                                                     }
                                                                     §§goto(addr751);
                                                                  case 21:
                                                                     §§push(§#!,§.§&"5§);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§4!2§.§-Y§.§1!#§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop().§]![§(§§pop()));
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                addr385:
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc6_ && param2))
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(_loc7_ || param1)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(_loc6_ && param3)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr412:
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr415:
                                                                                                               §§push(0);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        if(_loc7_ || this)
                                                                                                                        {
                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                           {
                                                                                                                              addr434:
                                                                                                                              if(_loc7_ || param1)
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ && param3))
                                                                                                                                 {
                                                                                                                                    §2"@§.getItemByName("MovieClip_GetMoreVH").setVisibility(true);
                                                                                                                                    addr453:
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc7_ || param1)
                                                                                                                                          {
                                                                                                                                             (§2"@§.getItemByName("MovieClip_GetMoreVH") as §^n§).§6",§ = true;
                                                                                                                                             (§2"@§.getItemByName("MovieClip_GetMoreVH") as §^n§).§!!a§("Start");
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(_loc7_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr294:
                                                                                                                                                   break loop1;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1234);
                                                                                                                                             }
                                                                                                                                             break loop1;
                                                                                                                                             addr336:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr1204);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr1037);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr907);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1202);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr734);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr497);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr294);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr957);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr982);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr905);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr710);
                                                                                                               }
                                                                                                               §§goto(addr1027);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr599);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr706);
                                                                                                         }
                                                                                                         §§goto(addr1088);
                                                                                                      }
                                                                                                      §§goto(addr602);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                §§goto(addr1027);
                                                                                             }
                                                                                             §§goto(addr412);
                                                                                          }
                                                                                          §§goto(addr706);
                                                                                       }
                                                                                       §§goto(addr385);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1027);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr871);
                                                                                 }
                                                                                 §§goto(addr1088);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr676);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr582);
                                                                           }
                                                                           §§goto(addr679);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1083);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr572);
                                                                     }
                                                                     §§goto(addr1127);
                                                                  case 22:
                                                                     §2"@§.getItemByName("MovieClip_GetMore").setVisibility(false);
                                                                     addr302:
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     §§goto(addr453);
                                                                     break;
                                                                  case 23:
                                                                     §2"@§.getItemByName("MovieClip_GetMore1").setVisibility(false);
                                                                     addr272:
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        if(_loc7_ || param3)
                                                                        {
                                                                           if(!(_loc6_ && param3))
                                                                           {
                                                                              break loop1;
                                                                           }
                                                                           §§goto(addr1042);
                                                                        }
                                                                        §§goto(addr1037);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr559);
                                                                     }
                                                                  case 24:
                                                                     §2"@§.getItemByName("MovieClip_GetMore2").setVisibility(false);
                                                                     addr254:
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        §§goto(addr1283);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr605);
                                                                     }
                                                                  case 25:
                                                                     §2"@§.getItemByName("MovieClip_GetMore3").setVisibility(false);
                                                                     addr238:
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     §§goto(addr628);
                                                                     break;
                                                                  case 26:
                                                                     §2"@§.getItemByName("MovieClip_GetMore4").setVisibility(false);
                                                                     addr215:
                                                                     if(!(_loc6_ && param3))
                                                                     {
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        §§goto(addr824);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr497);
                                                                     }
                                                                  case 27:
                                                                     §2"@§.getItemByName("MovieClip_GetMore5").setVisibility(false);
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_ || param3)
                                                                           {
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(_loc7_ || param3)
                                                                                 {
                                                                                    break loop1;
                                                                                 }
                                                                                 §§goto(addr1289);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1115);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr302);
                                                                        }
                                                                        §§goto(addr1196);
                                                                     }
                                                                     break loop1;
                                                                  case 28:
                                                                     break loop1;
                                                                  case 29:
                                                                     §8y§.§2!C§();
                                                                     addr158:
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        §§goto(addr783);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr238);
                                                                     }
                                                                  case 30:
                                                                     this.§8U§ = §@"=§;
                                                                     addr137:
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_ || param3)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 this.§;e§ = §8"U§;
                                                                                 addr116:
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       break loop1;
                                                                                    }
                                                                                    §§goto(addr525);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr254);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1142);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr720);
                                                                           }
                                                                        }
                                                                        §§goto(addr548);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr215);
                                                                     }
                                                                  case 31:
                                                                     §§push(this);
                                                                     §§push(§@"=§);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        §§push(-§§pop());
                                                                     }
                                                                     §§pop().§8U§ = §§pop();
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           this.§;e§ = §8"U§;
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc7_ || param2))
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr57:
                                                                                 break loop1;
                                                                              }
                                                                              §§goto(addr158);
                                                                              §§goto(addr111);
                                                                           }
                                                                           addr111:
                                                                           addr85:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr272);
                                                                        }
                                                                        §§goto(addr985);
                                                                     }
                                                                     break;
                                                                  case 32:
                                                                     this.§8U§ = 0;
                                                                     addr63:
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc7_ || param3)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       break loop1;
                                                                                    }
                                                                                    §§goto(addr1261);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr646);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr434);
                                                                              }
                                                                              §§goto(addr646);
                                                                           }
                                                                           §§goto(addr336);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr116);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr85);
                                                                     }
                                                                     §§goto(addr559);
                                                                  case 33:
                                                                     this.§8U§ = 0;
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                       §§goto(addr57);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1159);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1171);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr490);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr137);
                                                                           }
                                                                           §§goto(addr497);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr63);
                                                                        }
                                                                     }
                                                               }
                                                               §§goto(addr1088);
                                                            }
                                                            return;
                                                         }
                                                         addr2037:
                                                         §§push(29);
                                                         if(_loc6_)
                                                         {
                                                            addr2063:
                                                         }
                                                         §§goto(addr2126);
                                                      }
                                                      else
                                                      {
                                                         §§push("RESTART_LEVEL");
                                                         if(!_loc6_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc7_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(2);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr2121:
                                                                     }
                                                                     §§goto(addr2126);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr2037);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("CLOSE_TUTORIAL");
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(3);
                                                                              if(!(_loc7_ || param1))
                                                                              {
                                                                                 addr1631:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr1485:
                                                                              §§push(5);
                                                                              if(_loc6_ && this)
                                                                              {
                                                                                 addr1971:
                                                                              }
                                                                           }
                                                                           §§goto(addr2126);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("MIGHTY_EAGLE");
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       §§push(4);
                                                                                       if(_loc7_ || param2)
                                                                                       {
                                                                                          §§goto(addr2126);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1769);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr1623:
                                                                                       §§push(11);
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          §§goto(addr1631);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1856:
                                                                                          §§goto(addr2126);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr2126);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("POWERUP_OPEN");
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!(_loc6_ && param3))
                                                                                             {
                                                                                                §§goto(addr1485);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr1664:
                                                                                                §§push(13);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§goto(addr2126);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1902);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr2126);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push("POWERUP1");
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr1500:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc7_ || this)
                                                                                                      {
                                                                                                         §§push(6);
                                                                                                         if(_loc6_ && param3)
                                                                                                         {
                                                                                                            addr1787:
                                                                                                         }
                                                                                                         §§goto(addr2126);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr1766:
                                                                                                         §§push(17);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§goto(addr1769);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr1920:
                                                                                                            §§goto(addr2126);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr2126);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push("POWERUP2");
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(!(_loc6_ && param1))
                                                                                                         {
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(7);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§goto(addr2126);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1971);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr2126);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push("POWERUP3");
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  addr1538:
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(_loc7_ || param2)
                                                                                                                  {
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(_loc7_ || this)
                                                                                                                        {
                                                                                                                           §§push(8);
                                                                                                                           if(_loc7_ || param1)
                                                                                                                           {
                                                                                                                              §§goto(addr2126);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1971);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr2009:
                                                                                                                           §§push(28);
                                                                                                                           if(_loc7_ || param2)
                                                                                                                           {
                                                                                                                              addr2017:
                                                                                                                           }
                                                                                                                           §§goto(addr2126);
                                                                                                                        }
                                                                                                                        §§goto(addr2126);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push("POWERUP4");
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(!(_loc6_ && param3))
                                                                                                                           {
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(9);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr2126);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr1631);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1664);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2126);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push("POWERUP5");
                                                                                                                                 if(_loc7_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    if(_loc7_ || param1)
                                                                                                                                    {
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(10);
                                                                                                                                             if(_loc7_ || param3)
                                                                                                                                             {
                                                                                                                                                §§goto(addr2126);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr1787);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr1899:
                                                                                                                                             §§push(23);
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1902);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr2017);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr2126);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push("POWERUPOVER1");
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             addr1612:
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                addr1615:
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1623);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1664);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push("POWERUPOVER2");
                                                                                                                                                   if(!(_loc6_ && param3))
                                                                                                                                                   {
                                                                                                                                                      addr1640:
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               §§push(12);
                                                                                                                                                               if(!(_loc6_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr2126);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1713);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr1830:
                                                                                                                                                               §§push(20);
                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1838);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr2121);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2126);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push("POWERUPOVER3");
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  addr1661:
                                                                                                                                                                  if(§§pop() === §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1664);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr2037);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push("POWERUPOVER4");
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                        if(_loc7_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           addr1679:
                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc7_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(14);
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr2126);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1713);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr1784:
                                                                                                                                                                                 §§push(18);
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1787);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1994:
                                                                                                                                                                                    §§goto(addr2126);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2126);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push("POWERUPOVER5");
                                                                                                                                                                              if(_loc7_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc7_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1710);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1940:
                                                                                                                                                                                          §§push(25);
                                                                                                                                                                                          if(!(_loc6_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr2126);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr2121);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2126);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push("POWERUP6");
                                                                                                                                                                                       if(_loc7_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1722:
                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc7_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(16);
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr2126);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr2063);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr2111:
                                                                                                                                                                                                   §§push(32);
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr2114:
                                                                                                                                                                                                      §§goto(addr2126);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr2121);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr2126);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push("POWERUPOVER6");
                                                                                                                                                                                                if(_loc7_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   if(_loc7_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1758:
                                                                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc7_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1766);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr2055:
                                                                                                                                                                                                            §§push(30);
                                                                                                                                                                                                            if(!(_loc6_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr2063);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2126);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push("POWERUPOUT6");
                                                                                                                                                                                                         if(_loc7_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1773:
                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                            if(_loc7_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1784);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1940);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push("MIGHTYEAGLEOVER");
                                                                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1791:
                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1794:
                                                                                                                                                                                                                        if(§§pop() === §§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc6_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(19);
                                                                                                                                                                                                                              if(_loc6_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2126);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1940);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push("EXTRABIRD");
                                                                                                                                                                                                                           if(_loc7_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                                                                              if(!(_loc6_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() === §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1830);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1912:
                                                                                                                                                                                                                                       §§push(24);
                                                                                                                                                                                                                                       if(!(_loc6_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1920);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2126);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push("EXTRABIRDOVER");
                                                                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1842:
                                                                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1845:
                                                                                                                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc7_ || param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(21);
                                                                                                                                                                                                                                                if(!_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1856);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1971);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr2009);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2126);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push("MIGHTYEAGLEOUT");
                                                                                                                                                                                                                                             if(!(_loc6_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1868:
                                                                                                                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc7_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(22);
                                                                                                                                                                                                                                                         if(!(_loc6_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr2126);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1971);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr2118:
                                                                                                                                                                                                                                                         §§push(33);
                                                                                                                                                                                                                                                         if(_loc7_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr2121);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2126);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2126);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push("POWERUPOUT1");
                                                                                                                                                                                                                                                      if(_loc7_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1891:
                                                                                                                                                                                                                                                            if(§§pop() === §§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1899);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr2111);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push("POWERUPOUT2");
                                                                                                                                                                                                                                                               if(!_loc6_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1909:
                                                                                                                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1912);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr2009);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push("POWERUPOUT3");
                                                                                                                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1924:
                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc7_ || param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1940);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr2009);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push("POWERUPOUT4");
                                                                                                                                                                                                                                                                                 if(_loc6_ && param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr2100:
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 if(!(_loc6_ && param3))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr2108:
                                                                                                                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr2111);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr2118);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr2117:
                                                                                                                                                                                                                                                                                       if("ZOOM_OUT_RELEASE" === _loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr2118);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr2126);
                                                                                                                                                                                                                                                                                          §§push(34);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2126);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr2118);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr2117);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2126);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1983:
                                                                                                                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(27);
                                                                                                                                                                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1994);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr2114);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr2118);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2126);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push("RESTART_LEVEL");
                                                                                                                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1998:
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr2006:
                                                                                                                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr2009);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr2037);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push("CLOSE_TUTORIAL_POWERUP");
                                                                                                                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr2021:
                                                                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                                                                          if(!(_loc6_ && param2))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr2029:
                                                                                                                                                                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr2037);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr2078:
                                                                                                                                                                                                                                                                                                   §§push(31);
                                                                                                                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr2126);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr2121);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr2126);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push("ZOOM_IN");
                                                                                                                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr2044:
                                                                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                                                                   if(_loc7_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr2052:
                                                                                                                                                                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr2055);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr2078);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push("ZOOM_OUT");
                                                                                                                                                                                                                                                                                                         if(_loc7_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                                                                            if(!_loc7_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr2108);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2117);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2126);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr2078);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr2111);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push("ZOOM_IN_RELEASE");
                                                                                                                                                                                                                                                                                                      if(!(_loc6_ && param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr2100);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2117);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2126);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr2117);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr2117);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2044);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr2126);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr2108);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2117);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(_loc5_);
                                                                                                                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1960:
                                                                                                                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc7_ || param2)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(26);
                                                                                                                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1971);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr2017);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr2009);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2126);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push("POWERUPOUT5");
                                                                                                                                                                                                                                                                              if(!_loc6_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1975:
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1983);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr2029);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1998);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr2108);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr2126);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr2006);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1998);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2126);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2029);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2100);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2117);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2108);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2117);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2126);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr2052);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1924);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2126);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2029);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2021);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2126);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1794);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1842);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr2126);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1960);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1998);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1960);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr2117);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1924);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr2044);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1960);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1924);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr2126);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1758);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1773);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1661);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1791);
                                                                                                                                                }
                                                                                                                                                §§goto(addr2126);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1845);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1773);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1909);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1975);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1868);
                                                                                                                        }
                                                                                                                        §§goto(addr1975);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr2117);
                                                                                                               }
                                                                                                               §§goto(addr1975);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1891);
                                                                                                      }
                                                                                                      §§goto(addr2117);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr2029);
                                                                                             }
                                                                                             §§goto(addr1538);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1661);
                                                                                    }
                                                                                    §§goto(addr1640);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1615);
                                                                           }
                                                                           §§goto(addr2021);
                                                                        }
                                                                     }
                                                                     §§goto(addr1500);
                                                                  }
                                                                  §§goto(addr1722);
                                                               }
                                                               §§goto(addr2126);
                                                            }
                                                            §§goto(addr2006);
                                                         }
                                                         §§goto(addr1612);
                                                      }
                                                   }
                                                   §§goto(addr1679);
                                                }
                                                §§goto(addr1722);
                                             }
                                             §§goto(addr2126);
                                          }
                                          §§goto(addr1794);
                                       }
                                       §§goto(addr1612);
                                    }
                                    §§goto(addr1899);
                                 }
                                 else
                                 {
                                    if(_loc7_ || param3)
                                    {
                                       continue;
                                    }
                                    §§goto(addr1322);
                                 }
                              }
                              else
                              {
                                 §§goto(addr1356);
                              }
                           }
                        }
                        §§goto(addr1322);
                     }
                     §§pop().shoot();
                     §§goto(addr1322);
                  }
                  §§goto(addr1356);
               }
               §§goto(addr1322);
            }
            §§goto(addr1284);
         }
         addr1322:
         if(_loc7_)
         {
            addr1356:
            §§push(§?l§.§'h§.slingshot);
         }
         §%"9§.changeGameState(§4!`§.§3"L§);
      }
      
      protected function showTutorials() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = "ALL_BASIC";
         if(!_loc2_)
         {
            if(LevelManager.§,m§ == 6)
            {
               while(true)
               {
                  _loc1_ = "ALL_MUSHROOM";
                  addr81:
                  while(true)
                  {
                  }
               }
               addr79:
            }
            while(true)
            {
               §8y§.§7"?§(§2"@§,_loc1_,true);
               do
               {
                  §8y§.showTutorials(§2"@§,true);
               }
               while(!(_loc3_ || _loc1_));
               
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr79);
            }
            return;
         }
         §§goto(addr81);
      }
      
      override protected function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.useMightyEagle();
            while(true)
            {
               this.§7!k§.§+;§ = true;
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            §8y§.showTutorials(§2"@§);
            if(_loc1_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function initActivation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.initActivation();
         }
         do
         {
            this.§7!k§.§+;§ = false;
         }
         while(!_loc2_);
         
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super.updateCurrentScore(param1);
         }
         var _loc2_:int = §%"9§.getScore();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§ T§));
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int;
         §§push(_loc4_ = §4">§.getValue());
         if(!(_loc5_ && this))
         {
            if(§§pop() < _loc2_)
            {
               if(_loc6_ || _loc3_)
               {
                  addr81:
                  _loc4_ = Math.min(_loc2_,§4">§.getValue() + param1 * §'"Q§);
                  if(!(_loc5_ && _loc2_))
                  {
                     §4">§.assign(_loc4_);
                     loop4:
                     while(true)
                     {
                        addr117:
                        while(true)
                        {
                           if(this.§6! §)
                           {
                              if(_loc6_)
                              {
                                 while(true)
                                 {
                                    §2"@§.setText(_loc2_.toString(),"TextField_MEPercentage");
                                    addr127:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr122:
                              }
                              §§goto(addr127);
                           }
                           while(true)
                           {
                              this.§7!k§.updateCurrentScore(_loc4_,_loc2_,_loc3_);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(!_loc5_)
                              {
                                 return;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  §§goto(addr127);
               }
               §§goto(addr122);
            }
            §§goto(addr117);
         }
         §§goto(addr81);
      }
      
      protected function §5!_§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if((§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§6",§ == true)
            {
               if(!(_loc4_ && this))
               {
                  (§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§=;§(param1);
               }
            }
         }
         var _loc2_:* = 1;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(7);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if((§2"@§.getItemByName("MovieClip_GetMore" + _loc2_) as §^n§).§6",§ == true)
                     {
                        §§goto(addr263);
                     }
                     break;
                  }
                  loop3:
                  while(true)
                  {
                     §§push((§2"@§.getItemByName("MovieClip_Boom") as §^n§).§[!z§());
                     loop4:
                     while(true)
                     {
                        §§push("End");
                        loop5:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §2"@§.getItemByName("MovieClip_Boom").setVisibility(false);
                                 addr247:
                                 while(true)
                                 {
                                    (§2"@§.getItemByName("MovieClip_Boom") as §^n§).§!!a§("Start");
                                    addr217:
                                    while(_loc3_)
                                    {
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push((§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§[!z§());
                              loop10:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                    addr191:
                                 }
                                 §§push("End");
                                 while(!(_loc4_ && _loc2_))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       loop12:
                                       for(; !_loc4_; loop14:
                                       while(true)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc3_)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         while(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           §§push(7);
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break loop15;
                                                                                             }
                                                                                             §§goto(addr208);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr139:
                                                                                             (§2"@§.getItemByName("MovieClip_GetMore" + _loc2_) as §^n§).§6",§ = false;
                                                                                          }
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       (§2"@§.getItemByName("MovieClip_GetMore" + _loc2_) as §^n§).§!!a§("End");
                                                                                    }
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       addr86:
                                                                                       _loc2_++;
                                                                                       continue;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr247);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                   return;
                                                   addr151:
                                                }
                                                else
                                                {
                                                   addr263:
                                                }
                                                (§2"@§.getItemByName("MovieClip_GetMore" + _loc2_) as §^n§).§=;§(param1);
                                                break;
                                             }
                                             break;
                                          }
                                          continue loop12;
                                       },break loop2)
                                       {
                                          (§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§6",§ = false;
                                          while(true)
                                          {
                                             (§2"@§.getItemByName("MovieClip_GetMore") as §^n§).§!!a§("End");
                                             continue loop12;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr151);
                                 }
                                 §§push((§2"@§.getItemByName("MovieClip_GetMore" + _loc2_) as §^n§).§[!z§());
                                 continue loop5;
                                 if(_loc4_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push("End");
                                 if(_loc3_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       §§goto(addr139);
                                    }
                                    §§goto(addr86);
                                 }
                                 §§goto(addr191);
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  §§goto(addr263);
               }
               _loc2_++;
               continue loop0;
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.deActivate();
            while(true)
            {
               §8y§.deActivate();
               loop1:
               for(; !(_loc3_ && this); while(!(_loc3_ && _loc2_))
               {
                  if(this.§4'§)
                  {
                     §§goto(addr75);
                  }
                  §§goto(addr43);
               })
               {
                  this.§7!k§.deActivate();
                  loop2:
                  while(true)
                  {
                     §§push(this.§;"W§);
                     while(true)
                     {
                        §§pop().deActivate();
                        addr99:
                        while(!_loc3_)
                        {
                           §%"9§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
                           continue loop1;
                        }
                        addr43:
                        continue loop2;
                        loop9:
                        while(true)
                        {
                           §§push(this.§;"W§);
                           if(_loc3_ && _loc3_)
                           {
                              break;
                           }
                           §§pop().deActivate();
                           do
                           {
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              loop8:
                              while(!(_loc3_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    continue loop9;
                                 }
                                 addr75:
                                 while(true)
                                 {
                                    this.§#"Q§(this.§4'§);
                                    break loop8;
                                 }
                              }
                              while(true)
                              {
                                 this.§4'§ = null;
                                 §§goto(addr61);
                              }
                              addr61:
                           }
                           while(§2"@§.getItemByName("MovieClip_GetMore").setVisibility(false), !(_loc2_ || _loc1_));
                           
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           if(_loc2_)
                           {
                              while(false)
                              {
                                 continue loop9;
                              }
                              var _loc1_:int = 1;
                              loop12:
                              while(true)
                              {
                                 if(_loc1_ >= 6)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §?l§.§'h§.§6`§();
                                       loop14:
                                       while(true)
                                       {
                                          this.§5"!§();
                                          loop15:
                                          while(true)
                                          {
                                             this.§4"0§();
                                             loop16:
                                             while(_loc2_)
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   §§push(this.§9"%§);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§7"T§);
                                                      addr209:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr210:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                               addr212:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop23:
                                                                     for(; !(_loc3_ && _loc2_); if(!(_loc3_ && this))
                                                                     {
                                                                        addr155:
                                                                     },continue,return)
                                                                     {
                                                                        (§%"9§ as §!"M§).removeEventListener(§"^§.§65§,this.§0X§);
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           addr138:
                                                                           while(true)
                                                                           {
                                                                              this.§]!c§();
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              continue loop24;
                                                                           }
                                                                           §§goto(addr155);
                                                                        }
                                                                     }
                                                                     while(!_loc3_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     continue loop16;
                                                                     addr213:
                                                                  }
                                                                  §§goto(addr138);
                                                               }
                                                               addr187:
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr257:
                                                   if(!_loc3_)
                                                   {
                                                      continue loop12;
                                                   }
                                                }
                                             }
                                             continue loop13;
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    (§2"@§.getItemByName("MovieClip_GetMore" + _loc1_) as §^n§).setVisibility(false);
                                 }
                                 while(true)
                                 {
                                    _loc1_++;
                                    §§goto(addr257);
                                 }
                              }
                              addr41:
                           }
                           else
                           {
                              §§goto(addr99);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      protected function setPowerupVisibility() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §4!2§.§%!U§.§ !T§ = false;
         }
      }
      
      private function §5"!§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§]w§ > §!"$§)
            {
               do
               {
                  _loc1_ = Math.round(1000 / this.§]w§ * this.§^-§);
                  do
                  {
                     §§push(LevelManager.§ T§);
                     if(_loc5_ || _loc1_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     do
                     {
                        _loc3_ = (§?l§.§ "G§ as §%"S§).§4!'§();
                        do
                        {
                           §@q§.§;S§(_loc1_,_loc2_,§!"J§.§!X§,_loc3_);
                        }
                        while(_loc4_ && _loc2_);
                        
                     }
                     while(!_loc5_);
                     
                  }
                  while(!(_loc5_ || _loc3_));
                  
               }
               while(_loc4_);
               
               addr104:
            }
            return;
         }
         §§goto(addr104);
      }
      
      private function §7"'§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(this);
            §§push(this.§]w§);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§]w§ = §§pop();
            if(_loc5_)
            {
               §§push(this.§]w§);
               if(_loc5_)
               {
                  §§push(0);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc5_ || this)
                        {
                           addr59:
                           var _loc2_:*;
                           §§push((_loc2_ = this).§^-§);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(!(_loc4_ && param1))
                           {
                              _loc2_.§^-§ = _loc3_;
                           }
                           if(!_loc4_)
                           {
                              addr152:
                              §§push(this.§<"%§);
                              loop0:
                              while(true)
                              {
                                 §§push(§?l§.§""E§());
                                 addr156:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc5_ || this)
                                    {
                                       addr165:
                                       §§push(!§§pop());
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop3:
                                             while(§§pop())
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      this.§4"0§();
                                                   }
                                                   addr142:
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr151:
                                                      break loop3;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             return;
                                             addr123:
                                          }
                                       }
                                       addr165:
                                    }
                                    addr167:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                 }
                              }
                              addr91:
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr115);
               }
               §§goto(addr106);
            }
            §§goto(addr59);
         }
         §§goto(addr91);
      }
      
      private function §4"0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]w§ = §;!m§;
         }
         do
         {
            this.§^-§ = 0;
            do
            {
               this.§<"%§ = §?l§.§""E§();
               do
               {
                  this.§`"<§ = §?l§.§5&§();
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
         while(_loc1_ && this);
         
      }
      
      private function §#"Q§(param1:§6!K§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  param1.§7!d§();
               }
            }
         }
      }
      
      public function §=,§() : String
      {
         return §@q§.§%"$§;
      }
      
      public function §8"3§() : String
      {
         return LevelManager.§ T§;
      }
      
      private function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
