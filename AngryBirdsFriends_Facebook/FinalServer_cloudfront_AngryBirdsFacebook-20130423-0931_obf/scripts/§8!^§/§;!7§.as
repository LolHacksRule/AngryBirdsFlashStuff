package §8!^§
{
   import §%!I§.§7"1§;
   import §%i§.§0!Y§;
   import §,l§.§#!,§;
   import §0D§.§3!R§;
   import §1!t§.§""B§;
   import §4!<§.§%6§;
   import §5!Y§.§8y§;
   import §5!Y§.§9"6§;
   import §@!"§.§?l§;
   import §^"F§.§!!I§;
   import §^"F§.§4!2§;
   import §`!6§.§>i§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §;!7§ extends §7"1§
   {
       
      
      public function §;!7§(param1:Boolean = true, param2:String = "stateTournamentPlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.levelStarted();
            loop0:
            while(true)
            {
               §2"@§.getItemByName("Container_PowerUpButtons").mClip.alpha = 1;
               loop1:
               while(true)
               {
                  §2"@§.getItemByName("Container_PowerUpButtons").setVisibility(true);
                  loop2:
                  while(true)
                  {
                     §2"@§.getItemByName("Button_PowerUp5").setVisibility(false);
                     loop3:
                     while(true)
                     {
                        §2"@§.getItemByName("PowerUpCount5_BG").setVisibility(false);
                        while(true)
                        {
                           §2"@§.getItemByName("Movieclip_TntSliderBackground").setVisibility(true);
                           while(_loc2_ || _loc1_)
                           {
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                              if(_loc1_)
                              {
                                 continue loop1;
                              }
                              §2"@§.getItemByName("Button_PowerUp6").setVisibility(false);
                              loop6:
                              while(true)
                              {
                                 §2"@§.getItemByName("PowerUpCount6_BG").setVisibility(false);
                                 while(true)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 continue loop0;
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    return;
                                    addr46:
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      override protected function showTutorials() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8y§.showTutorials(§2"@§,true);
            do
            {
               §8y§.§7"?§(§2"@§,§3!R§.§&"5§.§%!^§.tutorials,true);
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            do
            {
               (§2"@§.getItemByName("Movieclip_Slider") as §0!Y§).mClip.visible = true;
            }
            while(!_loc2_);
            
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param1))
         {
            §§push("PAUSE");
            if(!(_loc5_ && this))
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && param2))
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           addr136:
                        }
                     }
                     else
                     {
                        addr133:
                        §§push(1);
                        if(_loc6_)
                        {
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr141);
                  }
                  else
                  {
                     addr131:
                     §§push("POWERUP5");
                     §§push(_loc4_);
                  }
                  §§goto(addr133);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr133);
               }
               else
               {
                  §§push(2);
               }
               addr141:
               loop0:
               while(true)
               {
                  switch(§§pop())
                  {
                     case 0:
                        (§?l§.§'h§ as §%6§).§+"3§.§]W§();
                        if(!(_loc5_ && this))
                        {
                           break loop0;
                        }
                        §§goto(addr150);
                     case 1:
                        §§push(§#!,§.§&"5§.§]![§(§4!2§.§%!U§.§1!#§));
                        if(_loc6_)
                        {
                           if(§§pop() <= 0)
                           {
                              if(!(_loc5_ && param3))
                              {
                                 §9"6§.§7!B§(§3!R§.§&"5§.§%!^§.§;[§,"tntdrop0");
                                 if(_loc6_ || param1)
                                 {
                                    return;
                                 }
                                 break loop0;
                              }
                              break loop0;
                           }
                           break loop0;
                        }
                        break;
                  }
               }
               super.uiInteractionHandler(param1,param2,param3);
               addr150:
               return;
            }
            §§goto(addr131);
         }
         §§goto(addr133);
      }
      
      override public function run(param1:Number) : int
      {
         return super.run(param1);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §>!%§ = true;
            loop0:
            while(true)
            {
               §2"@§ = new §`_§(this);
               loop1:
               while(true)
               {
                  §2"@§.init(§ "<§.§%I§.Views.View_FacebookLevelPlay[0]);
                  loop2:
                  for(; !_loc2_; while(_loc1_)
                  {
                     § "1§ = (§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).x;
                     §§goto(addr90);
                  })
                  {
                     §7!k§ = new §>i§(§2"@§);
                     while(true)
                     {
                        §1m§ = (§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).width - 25;
                        continue loop2;
                        addr47:
                        while(!(_loc2_ && _loc1_))
                        {
                           § "+§();
                           if(_loc1_)
                           {
                              addr33:
                              if(!(_loc2_ && this))
                              {
                                 return;
                                 addr40:
                              }
                              addr90:
                              while(!_loc2_)
                              {
                                 continue loop1;
                                 §§goto(addr33);
                              }
                              while(_loc1_)
                              {
                                 §;"W§ = new §!!I§(§2"@§);
                                 §§goto(addr71);
                              }
                              addr71:
                              continue loop2;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
            §§goto(addr47);
         }
         §§goto(addr40);
      }
      
      override protected function dimPowerUp() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.dimPowerUp();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
      }
      
      override protected function setPowerupVisibility() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §4!2§.§%!U§.§ !T§ = true;
         }
      }
   }
}
