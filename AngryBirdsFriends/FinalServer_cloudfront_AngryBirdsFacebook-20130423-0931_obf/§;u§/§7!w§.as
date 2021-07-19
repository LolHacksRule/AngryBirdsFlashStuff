package §;u§
{
   import §%i§.§7"0§;
   import §,l§.§+I§;
   import §-r§.§!"M§;
   import §1!t§.§""B§;
   import §2"'§.§'v§;
   import §2"'§.§0W§;
   import §30§.§'"+§;
   import §4D§.UserProgressEvent;
   import §5!&§.§+"@§;
   import §5!Y§.§3"H§;
   import §5!Y§.§9"6§;
   import §8m§.§@"M§;
   import §9!n§.§!J§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §<"F§.§6h§;
   import §>0§.§-!x§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import com.AngryBirds.friendsbar.§]a§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   
   public class §7!w§ extends § if§ implements §4d§
   {
       
      
      private var §#"L§:§3"H§;
      
      private var §2!j§:String;
      
      private var §`!M§:String;
      
      protected var §-&§:Boolean = false;
      
      private var §-0§:Boolean = false;
      
      private var §]1§:§6h§;
      
      private var § !J§:Array;
      
      public function §7!w§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
            while(true)
            {
               §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            §2"@§.getItemByName("Button_Watch_Replay").setVisibility(false);
            if(!_loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super.activate();
            while(true)
            {
               loop1:
               while(true)
               {
                  (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§!!;§);
                  do
                  {
                     §?l§.§'h§.background.§!!K§();
                  }
                  while(!(_loc5_ || this));
                  
                  if(_loc4_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  §§push(LevelManager.§8t§());
                  if(_loc5_)
                  {
                     §§push(§§pop());
                  }
                  var _loc1_:* = §§pop();
                  var _loc2_:Array = LevelManager.§ T§.split("-");
                  var _loc3_:String = _loc2_[0];
                  if(!_loc4_)
                  {
                     §§push(_loc3_);
                     while(true)
                     {
                        §§push("1000");
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc5_ || _loc1_)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    continue;
                                 }
                              }
                           }
                           §§goto(addr211);
                        }
                     }
                  }
                  §§goto(addr86);
               }
            }
         }
         §§goto(addr34);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§6U§();
         }
         loop0:
         while(true)
         {
            §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
            loop1:
            while(true)
            {
               §2"@§.getItemByName("Button_Share_Crown").setVisibility(false);
               while(!_loc1_)
               {
                  §2"@§.getItemByName("Button_Share_Stars").setVisibility(false);
                  continue loop1;
                  if(_loc2_ || this)
                  {
                     return;
                  }
               }
               continue loop0;
            }
         }
      }
      
      protected function §5+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
            while(true)
            {
               §2"@§.getItemByName("Button_Share_Crown").setVisibility(false);
               loop1:
               while(true)
               {
                  §2"@§.getItemByName("Button_Share_Stars").setVisibility(false);
                  loop2:
                  while(true)
                  {
                     §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
                     addr79:
                     while(true)
                     {
                        §2"@§.getItemByName("Button_Embed").setVisibility(false);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr72);
                  }
               }
               if(_loc1_ || _loc2_)
               {
                  addr72:
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && this))
         {
            super.onBadgeLanded();
         }
         §§push((AngryBirdsFP11.sUserProgress as §#!$§).§;M§(LevelManager.§ T§));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §#!$§).getEagleScoreForLevel(LevelManager.§ T§);
         if(_loc5_ || _loc1_)
         {
            §§push(this.§-&§);
            if(_loc5_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§push(Boolean(§1!u§));
                     loop28:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop33:
                           while(true)
                           {
                              §§pop();
                              addr483:
                              while(true)
                              {
                                 §§push(_loc1_ == 1);
                                 if(!(_loc6_ && this))
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    continue loop28;
                                 }
                                 continue loop33;
                              }
                           }
                           addr482:
                        }
                        while(!§§pop())
                        {
                           if(!§-U§)
                           {
                              addr196:
                              this.§`!M§ = "";
                              loop0:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       §2"@§.getItemByName("Button_Share_Default").setVisibility(true);
                                       loop2:
                                       while(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §2"@§.getItemByName("Button_Share_Crown").setVisibility(false);
                                                while(true)
                                                {
                                                   §2"@§.getItemByName("Button_Share_Stars").setVisibility(false);
                                                   while(true)
                                                   {
                                                      if(_loc6_ && _loc2_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  if(_loc5_ || _loc1_)
                                                                  {
                                                                     §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
                                                                     continue;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
                                                                     §§goto(addr420);
                                                                  }
                                                                  addr427:
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §@"M§.§3"C§("Hiscore_Star_Splash1",§+"1§);
                                                                  §§goto(addr348);
                                                                  addr360:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
                                                                     addr441:
                                                                     while(true)
                                                                     {
                                                                        §2"@§.getItemByName("Button_Share_Crown").setVisibility(true);
                                                                        addr434:
                                                                        while(true)
                                                                        {
                                                                           §2"@§.getItemByName("Button_Share_Stars").setVisibility(false);
                                                                           §§goto(addr427);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr470:
                                                               }
                                                            }
                                                            addr353:
                                                         }
                                                         else
                                                         {
                                                            loop26:
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §2"@§.getItemByName("Button_Share_Stars").setVisibility(true);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
                                                                           addr333:
                                                                           while(true)
                                                                           {
                                                                              §2"@§.getItemByName("Button_Share_Crown").setVisibility(false);
                                                                              continue loop26;
                                                                           }
                                                                        }
                                                                        addr342:
                                                                     }
                                                                     if(_loc5_ || _loc1_)
                                                                     {
                                                                        §2"@§.getItemByName("Button_Share_ME").setVisibility(false);
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§2"@§.getItemByName("Button_Share_Stars").x + §2"@§.getItemByName("Container_LevelEndStripe").x));
                                                                           loop6:
                                                                           for(; _loc5_; §§push(Number(§2"@§.getItemByName("Button_Share_Stars").y + §2"@§.getItemByName("Container_LevelEndStripe").y)),if(!_loc5_)
                                                                           {
                                                                              continue;
                                                                           },if(_loc5_)
                                                                           {
                                                                              §§goto(addr276);
                                                                           },§§goto(addr412))
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              while(!_loc6_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              §§goto(addr387);
                                                                           }
                                                                           §§goto(addr399);
                                                                        }
                                                                        addr301:
                                                                     }
                                                                     §§goto(addr420);
                                                                  }
                                                                  addr308:
                                                               }
                                                               else
                                                               {
                                                                  addr339:
                                                                  while(true)
                                                                  {
                                                                     this.§`!M§ = "stars";
                                                                  }
                                                                  addr339:
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                         }
                                                         §§goto(addr420);
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                   §§goto(addr277);
                                                   continue loop2;
                                                }
                                                addr175:
                                             }
                                             else
                                             {
                                                addr348:
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc3_,_loc4_,§-!x§.§=!g§,20);
                                                while(!_loc6_)
                                                {
                                                   §2"@§.addChild(§3Z§);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §%q§.push(§3Z§);
                                                      addr234:
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            break loop5;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      §@"M§.§3"C§("Hiscore_Star_Splash1",§+"1§);
                                                      break loop2;
                                                   }
                                                }
                                                addr413:
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(Number(§2"@§.getItemByName("Button_Share_Crown").y + §2"@§.getItemByName("Container_LevelEndStripe").y));
                                                   addr399:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      addr400:
                                                      while(true)
                                                      {
                                                         §3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc3_,_loc4_,§-!x§.§=!g§,20);
                                                         addr387:
                                                         while(true)
                                                         {
                                                            §2"@§.addChild(§3Z§);
                                                            break loop0;
                                                         }
                                                      }
                                                   }
                                                   addr412:
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      continue loop9;
                                                      addr420:
                                                      while(true)
                                                      {
                                                         continue loop8;
                                                      }
                                                   }
                                                }
                                                addr276:
                                                _loc4_ = §§pop();
                                             }
                                             addr277:
                                             addr219:
                                          }
                                          return;
                                       }
                                       while(true)
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             if(_loc6_)
                                             {
                                                §§goto(addr301);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr292);
                                       }
                                       §§goto(addr61);
                                    }
                                    else
                                    {
                                       §§goto(addr483);
                                    }
                                 }
                                 break;
                                 §§goto(addr196);
                              }
                              while(true)
                              {
                                 if(_loc5_ || this)
                                 {
                                    §%q§.push(§3Z§);
                                    §§goto(addr353);
                                 }
                                 §§goto(addr441);
                              }
                              §§goto(addr360);
                              addr200:
                           }
                           §§goto(addr339);
                        }
                        this.§`!M§ = "crown";
                        §§goto(addr470);
                     }
                  }
                  §§goto(addr483);
               }
               else
               {
                  this.§5+§();
                  if(!(_loc6_ && _loc1_))
                  {
                     if(_loc5_ || _loc3_)
                     {
                        if(!_loc6_)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr333);
                           }
                           else
                           {
                              addr84:
                           }
                           §§goto(addr57);
                        }
                        else
                        {
                           §§goto(addr200);
                        }
                     }
                     §§goto(addr175);
                  }
               }
               §§goto(addr91);
            }
            §§goto(addr482);
         }
         §§goto(addr84);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if(!_loc7_)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            loop0:
            while(true)
            {
               §§push((§§pop() as §#!$§).§case §);
               if(_loc8_)
               {
                  §§push(Boolean(§§pop()));
               }
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr338:
                        do
                        {
                           §§push(_loc4_.indexOf(param2) == -1);
                           if(!_loc7_)
                           {
                              if(!(_loc8_ || param1))
                              {
                                 continue loop2;
                              }
                              §§push(!§§pop());
                           }
                        }
                        while(_loc8_);
                        
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        do
                        {
                           super.uiInteractionHandler(param1,param2,param3);
                        }
                        while(_loc7_ && param3);
                        
                        if(_loc7_)
                        {
                           while(true)
                           {
                              if(!(_loc8_ || this))
                              {
                                 continue loop0;
                              }
                              if(!(_loc7_ && param1))
                              {
                                 break;
                              }
                              addr320:
                              while(!_loc7_)
                              {
                                 this.§#"L§ = §9"6§.§'!o§();
                              }
                              §§goto(addr338);
                           }
                           return;
                           addr280:
                        }
                        if(_loc8_ || this)
                        {
                           break;
                        }
                        while(true)
                        {
                           this.§2!j§ = param2;
                           continue loop0;
                           §§goto(addr322);
                        }
                     }
                     §§goto(addr320);
                  }
               }
            }
         }
         var _loc6_:* = param2;
         if(!_loc7_)
         {
            §§push("OPEN_AVATAR");
            if(!_loc7_)
            {
               §§push(_loc6_);
               if(_loc8_ || param3)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc8_ || param2)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                        }
                     }
                     else
                     {
                        addr439:
                        §§push(3);
                        if(!_loc8_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("SHARE_CROWN");
                     if(!(_loc7_ && param2))
                     {
                        §§push(_loc6_);
                        if(_loc8_ || param3)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc8_ || param1)
                              {
                                 §§push(1);
                                 if(!_loc8_)
                                 {
                                    addr480:
                                 }
                              }
                              else
                              {
                                 addr411:
                                 §§push(2);
                                 if(_loc7_ && param1)
                                 {
                                 }
                              }
                              §§goto(addr492);
                           }
                           else
                           {
                              §§push("SHARE_STARS");
                              if(_loc8_ || param3)
                              {
                                 §§push(_loc6_);
                                 if(_loc8_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          §§goto(addr411);
                                       }
                                       else
                                       {
                                          addr472:
                                          §§push(4);
                                          if(!(_loc7_ && this))
                                          {
                                             §§goto(addr480);
                                          }
                                          else
                                          {
                                             addr487:
                                             §§goto(addr492);
                                          }
                                       }
                                       §§goto(addr492);
                                    }
                                    else
                                    {
                                       §§push("SHARE_DEFAULT");
                                       if(_loc8_ || param3)
                                       {
                                          addr428:
                                          §§push(_loc6_);
                                          if(_loc8_)
                                          {
                                             addr431:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   §§goto(addr439);
                                                }
                                                else
                                                {
                                                   §§goto(addr472);
                                                }
                                             }
                                             else
                                             {
                                                §§push("EMBED");
                                                if(!(_loc7_ && param3))
                                                {
                                                   addr451:
                                                   §§push(_loc6_);
                                                   if(!_loc7_)
                                                   {
                                                      addr454:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§goto(addr472);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr483:
                                                         if("FREE_POWERUPS" !== _loc6_)
                                                         {
                                                            addr492:
                                                            loop10:
                                                            while(true)
                                                            {
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     §9"6§.§<h§("CATEGORYBACKGROUNDS");
                                                                     break loop10;
                                                                     addr226:
                                                                  case 1:
                                                                     addr216:
                                                                     AngryBirdsFP11.§>m§.§^X§();
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push((AngryBirdsFP11.sUserProgress as §#!$§).§;M§(LevelManager.§ T§));
                                                                        if(!(_loc8_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(int(§§pop()));
                                                                        if(_loc7_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(§'"+§);
                                                                           §§push("shareCrown");
                                                                           §§push(LevelManager.§ T§);
                                                                           §§push(LevelManager.§`"Q§().writtenName + "-");
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§§pop() + §!J§.§;6§(LevelManager.§ T§));
                                                                           }
                                                                           §§pop().§'!#§(§§pop(),§§pop(),§§pop(),_loc5_,§?l§.§5-§.getScore());
                                                                           addr183:
                                                                           while(!(_loc8_ || this))
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           break loop10;
                                                                        }
                                                                     }
                                                                     break loop10;
                                                                  case 2:
                                                                     §§push(AngryBirdsFP11.§>m§);
                                                                     if(_loc8_ || param1)
                                                                     {
                                                                        §§pop().§^X§();
                                                                        §§push(§'"+§);
                                                                        §§push("shareThreeStars");
                                                                        §§push(LevelManager.§ T§);
                                                                        §§push(LevelManager.§`"Q§().writtenName + "-");
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(§§pop() + §!J§.§;6§(LevelManager.§ T§));
                                                                        }
                                                                        §§pop().§'!#§(§§pop(),§§pop(),§§pop(),§?l§.§5-§.getScore());
                                                                        break;
                                                                        addr160:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr216);
                                                                     }
                                                                     break;
                                                                  case 3:
                                                                     §§push(§'"+§);
                                                                     §§push("shareDefault");
                                                                     §§push(LevelManager.§ T§);
                                                                     §§push(LevelManager.§`"Q§().writtenName + "-");
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        §§push(§§pop() + §!J§.§;6§(LevelManager.§ T§));
                                                                     }
                                                                     §§pop().§'!#§(§§pop(),§§pop(),§§pop(),§?l§.§5-§.getScore(),true);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr57:
                                                                        break loop10;
                                                                     }
                                                                     break loop10;
                                                                  case 4:
                                                                     §§push(§9"6§);
                                                                     §§push(LevelManager.§ T§);
                                                                     §§push(LevelManager.§`"Q§().writtenName + "-");
                                                                     if(_loc8_ || param3)
                                                                     {
                                                                        §§push(§§pop() + §!J§.§;6§(LevelManager.§ T§));
                                                                     }
                                                                     §§pop().§-L§(§§pop(),§§pop(),§?l§.§5-§.getScore(),this.§`!M§);
                                                                     addr86:
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              break loop10;
                                                                           }
                                                                           §§goto(addr226);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr160);
                                                                        }
                                                                     }
                                                                     break;
                                                                  case 5:
                                                                     §9"6§.§#z§();
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(!(_loc7_ && param3))
                                                                        {
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break loop10;
                                                                              }
                                                                              §§goto(addr57);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr183);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr86);
                                                                        }
                                                                     }
                                                               }
                                                               break;
                                                            }
                                                            return;
                                                            §§push(6);
                                                         }
                                                      }
                                                      §§goto(addr492);
                                                      §§goto(addr492);
                                                   }
                                                }
                                                §§goto(addr483);
                                             }
                                             §§goto(addr492);
                                          }
                                          §§goto(addr483);
                                       }
                                       §§goto(addr451);
                                    }
                                 }
                                 §§goto(addr454);
                              }
                           }
                           §§goto(addr492);
                        }
                        §§goto(addr431);
                     }
                     §§goto(addr451);
                  }
                  §§goto(addr492);
               }
               §§goto(addr431);
            }
            §§goto(addr428);
         }
         §§goto(addr411);
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:§3-§ = LevelManager.§`"Q§();
         if(!(_loc4_ && this))
         {
            §§push(_loc2_.name);
            if(!_loc4_)
            {
               if(§§pop() == §7D§.§^!i§)
               {
                  if(_loc3_)
                  {
                     §§push(§4"Y§.STATE_NAME);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           _loc1_ = §§pop();
                           if(!_loc4_)
                           {
                              addr74:
                              §§push(_loc1_);
                              if(_loc3_ || _loc1_)
                              {
                                 if(§§pop() != null)
                                 {
                                    addr84:
                                    §§push(_loc1_);
                                    if(_loc3_)
                                    {
                                       addr87:
                                       §§push(§§pop());
                                       if(!_loc4_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§9"@§.STATE_NAME);
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 §§goto(addr96);
                              }
                           }
                           §§goto(addr84);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr74);
            }
            addr96:
            return §§pop();
         }
         §§goto(addr84);
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (AngryBirdsFP11.sUserProgress as §#!$§).removeEventListener(UserProgressEvent.§@O§,this.onUserProgressSaved);
            while(true)
            {
               §§push(this.§#"L§);
               if(!(_loc2_ && param1))
               {
                  if(§§pop())
                  {
                     addr86:
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           §§push(this.§#"L§);
                           break;
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§#"L§ = null;
                        addr67:
                        while(true)
                        {
                        }
                     }
                     addr86:
                  }
                  loop1:
                  while(true)
                  {
                     this.uiInteractionHandler(-1,this.§2!j§,null);
                     while(true)
                     {
                        if(_loc3_)
                        {
                           this.§2!j§ = null;
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              break;
                           }
                           continue;
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr67);
                  }
                  return;
               }
               break;
            }
            §§pop().close();
         }
         §§goto(addr86);
      }
      
      private function §'!g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §2"@§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
            while(true)
            {
               §2"@§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
               addr70:
               if(_loc1_ || _loc1_)
               {
                  §2"@§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
                  addr77:
                  if(!_loc1_)
                  {
                     while(_loc1_ || _loc2_)
                     {
                        §§goto(addr70);
                        §§goto(addr77);
                     }
                     while(true)
                     {
                        §2"@§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
                        §§goto(addr63);
                     }
                     addr63:
                     addr84:
                  }
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      protected function saveLevelProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            (§?l§.§ "G§ as §%"S§).newUserScore(LevelManager.§ T§);
            do
            {
               (AngryBirdsFP11.sUserProgress as §#!$§).saveLevelProgress(LevelManager.§ T§);
            }
            while(!_loc1_);
            
         }
      }
      
      private function §<e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§9"%§);
            if(!_loc1_)
            {
               §§push(§§pop().§7"T§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr42:
                        if(this.§9"%§.§7"T§.§+!!§())
                        {
                           if(_loc1_ && _loc1_)
                           {
                           }
                        }
                        §§goto(addr53);
                     }
                     this.§0K§();
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr42);
         }
         addr53:
      }
      
      private function §0K§() : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:MovieClip = null;
         var _loc6_:* = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:int = 0;
         var _loc10_:* = NaN;
         var _loc11_:§'v§ = null;
         if(_loc14_)
         {
            this.§ !J§ = [];
         }
         var _loc1_:Array = (§?l§.§5-§ as §!"M§).§`"H§();
         var _loc2_:MovieClip = §2"@§.getItemByName("eggMovieClip").mClip;
         loop0:
         while(true)
         {
            if(_loc2_.numChildren > 0)
            {
               _loc2_.removeChildAt(0);
               continue;
            }
            loop1:
            while(true)
            {
               §§push(this.§9"%§.§7"T§.§+!!§());
               if(_loc14_ || _loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc14_)
                  {
                     if(§§pop())
                     {
                        loop13:
                        while(true)
                        {
                           §§pop();
                           addr165:
                           loop12:
                           while(true)
                           {
                              §§push(LevelManager.§ T§.indexOf(§+"9§.§!!'§) == -1);
                              if(_loc14_)
                              {
                                 if(_loc15_)
                                 {
                                    continue loop13;
                                 }
                                 addr122:
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                    break loop12;
                                    §§goto(addr122);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc14_)
                                 {
                                    if(_loc15_)
                                    {
                                       break;
                                    }
                                    this.§]1§ = new §6h§(this.§9"%§.§7"T§.§="U§,"",false,false);
                                 }
                                 loop4:
                                 for(; !_loc15_; if(_loc15_ && _loc1_)
                                 {
                                    continue;
                                 },if(_loc15_)
                                 {
                                    continue loop0;
                                 },§§push(this.§]1§),if(_loc14_)
                                 {
                                    if(_loc14_)
                                    {
                                       §§push(-70);
                                       if(!(_loc15_ && _loc1_))
                                       {
                                          §§goto(addr72);
                                       }
                                       §§goto(addr86);
                                    }
                                    §§goto(addr104);
                                 },§§goto(addr85))
                                 {
                                    §§push(this.§]1§);
                                    while(true)
                                    {
                                       §§push(this.§9"%§.§7"T§.§5!4§);
                                       loop6:
                                       while(true)
                                       {
                                          §§pop().eggs = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§]1§);
                                                addr85:
                                                while(true)
                                                {
                                                   §§push(-70);
                                                   addr86:
                                                   while(_loc14_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         continue loop7;
                                                         addr72:
                                                         §§pop().y = §§pop();
                                                         if(!(_loc15_ && _loc1_))
                                                         {
                                                            if(true)
                                                            {
                                                               break loop8;
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             (_loc5_ = §2"@§.getItemByName("EggRaffleBasketContainer").mClip).addChild(this.§]1§);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr165);
                              }
                              var _loc3_:* = int(_loc1_.length - 1);
                              if(!(_loc15_ && this))
                              {
                                 var _loc12_:int = 0;
                                 if(_loc14_)
                                 {
                                    var _loc13_:* = _loc1_;
                                    if(!_loc15_)
                                    {
                                       addr396:
                                       if(§§hasnext(_loc13_,_loc12_))
                                       {
                                          §§push(§§nextvalue(_loc12_,_loc13_));
                                          if(!(_loc15_ && this))
                                          {
                                             §§push(§§pop());
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                §§push(_loc4_ = §§pop());
                                             }
                                             §§push(§§pop().substr(§§pop().length - 2));
                                          }
                                          _loc6_ = §§pop();
                                          addr242:
                                          §§push(§?q§);
                                          §§push("Wonderland_Egg");
                                          if(_loc14_ || _loc2_)
                                          {
                                             §§push(§§pop() + _loc6_);
                                          }
                                          (_loc8_ = new (_loc7_ = §§pop().§ q§(§§pop()))()).gotoAndStop(1);
                                          if(!_loc15_)
                                          {
                                             _loc8_.x = _loc2_.numChildren * _loc8_.width;
                                             _loc2_.addChild(_loc8_);
                                             addr303:
                                             _loc9_ = §?l§.§""E§() - 140;
                                             addr298:
                                             addr301:
                                             addr302:
                                             addr332:
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   §§push(1.5);
                                                   if(_loc14_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc14_)
                                                      {
                                                         §§push(§§pop() + §§pop() * 0.5);
                                                         if(!(_loc15_ && _loc1_))
                                                         {
                                                            addr284:
                                                            §§push(Number(§§pop()));
                                                            if(!_loc15_)
                                                            {
                                                               if(_loc14_ || _loc2_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  if(_loc14_)
                                                                  {
                                                                     addr296:
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr298);
                                                                     }
                                                                     (_loc11_ = §0W§.§&"5§.§]!r§(_loc8_,{
                                                                        "x":_loc9_,
                                                                        "alpha":0.8
                                                                     },{
                                                                        "x":_loc8_.x,
                                                                        "alpha":1
                                                                     },_loc10_,§0W§.§"q§)).onComplete = this.§'"8§;
                                                                     if(_loc14_)
                                                                     {
                                                                        _loc11_.play();
                                                                        addr377:
                                                                        this.§ !J§.push(_loc11_);
                                                                        §§push(_loc3_);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        addr395:
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              addr375:
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr377);
                                                                              }
                                                                              §§goto(addr396);
                                                                           }
                                                                           §§goto(addr395);
                                                                        }
                                                                        addr382:
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§goto(addr375);
                                                                  }
                                                                  §§goto(addr298);
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                   §§goto(addr284);
                                                }
                                                §§goto(addr332);
                                             }
                                             addr324:
                                             §§goto(addr324);
                                          }
                                          §§goto(addr296);
                                       }
                                       §§goto(addr399);
                                    }
                                    §§goto(addr242);
                                 }
                                 addr399:
                                 if(!_loc15_)
                                 {
                                    if(_loc1_.length > 0)
                                    {
                                       if(_loc14_ || _loc1_)
                                       {
                                          addr413:
                                          this.§9"%§.§7"T§.§-!8§(this.§9"%§.§7"T§.email,_loc1_.length);
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr413);
                           }
                           continue loop1;
                        }
                        addr164:
                     }
                     §§goto(addr123);
                  }
               }
               §§goto(addr164);
            }
         }
      }
      
      private function §'"8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§]1§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§]1§);
                     addr77:
                     addr69:
                     loop1:
                     while(true)
                     {
                        §§pop().§<s§();
                        while(true)
                        {
                           §§push(this.§]1§);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§pop().eggs = Math.min(this.§9"%§.§7"T§.§,!2§,this.§]1§.eggs + 1);
                           if(_loc1_ || _loc2_)
                           {
                              if(_loc1_)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr77);
         }
         §§goto(addr69);
      }
      
      private function §6U§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:§'v§ = null;
         var _loc2_:MovieClip = null;
         for each(_loc1_ in this.§ !J§)
         {
            if(!(_loc6_ && _loc2_))
            {
               _loc1_.stop();
            }
         }
         _loc2_ = §2"@§.getItemByName("EggRaffleBasketContainer").mClip;
         if(!(_loc6_ && _loc1_))
         {
            while(_loc2_.numChildren > 0)
            {
               _loc2_.removeChildAt(0);
               if(!_loc7_)
               {
                  break;
               }
            }
         }
         var _loc3_:MovieClip = §2"@§.getItemByName("eggMovieClip").mClip;
         if(!_loc6_)
         {
            loop2:
            while(true)
            {
               if(_loc3_.numChildren <= 0)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  if(_loc7_ || _loc2_)
                  {
                     this.§ !J§ = null;
                     break;
                  }
               }
               else
               {
                  _loc3_.removeChildAt(0);
               }
               addr129:
               while(true)
               {
                  continue loop2;
               }
            }
            return;
         }
         §§goto(addr129);
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:§7"0§ = null;
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc6_)
         {
            super.setScoreData();
            while(true)
            {
               if(§1!u§)
               {
                  while(true)
                  {
                     this.saveLevelProgress();
                     addr69:
                     while(true)
                     {
                     }
                  }
                  addr67:
               }
               loop2:
               while(true)
               {
                  this.§<e§();
                  while(!(_loc7_ && this))
                  {
                     if(_loc6_)
                     {
                        (§?l§.§ "G§ as §%"S§).§96§.§<!J§ = false;
                        if(!_loc6_)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           break loop2;
                        }
                        if(false)
                        {
                           continue loop2;
                        }
                        §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
                        if(_loc6_ || _loc3_)
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(!_loc7_)
                        {
                           if(_loc2_ > _loc1_)
                           {
                              if(!_loc7_)
                              {
                                 addr92:
                                 §§push(§+"@§.§8!c§(_loc1_,_loc2_));
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ && _loc1_))
                                    {
                                       _loc3_ = §§pop();
                                       addr116:
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(_loc3_);
                                       }
                                       var _loc5_:* = _loc3_;
                                       if(_loc6_)
                                       {
                                          §§push("B20007");
                                          if(_loc6_)
                                          {
                                             §§push(_loc5_);
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      §§push(0);
                                                      if(_loc7_)
                                                      {
                                                         addr256:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr238:
                                                      §§push(3);
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                         §§goto(addr256);
                                                      }
                                                   }
                                                   addr261:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         _loc4_ = §2"@§.getItemByName("Button_Unlocked_Bronze") as §7"0§;
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         addr277:
                                                         §4!C§ = true;
                                                         §§goto(addr280);
                                                      case 1:
                                                         _loc4_ = §2"@§.getItemByName("Button_Unlocked_Silver") as §7"0§;
                                                         break;
                                                      case 2:
                                                         _loc4_ = §2"@§.getItemByName("Button_Unlocked_Gold") as §7"0§;
                                                         break;
                                                      case 3:
                                                         _loc4_ = §2"@§.getItemByName("Button_Unlocked_Diamond") as §7"0§;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         _loc4_.setVisibility(true);
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                         }
                                                         addr280:
                                                         return;
                                                      }
                                                   }
                                                   §§goto(addr277);
                                                }
                                                else
                                                {
                                                   §§push("B20008");
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!_loc7_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               §§push(1);
                                                               if(_loc7_ && _loc3_)
                                                               {
                                                                  §§goto(addr256);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         else
                                                         {
                                                            §§push("B20009");
                                                            if(_loc6_)
                                                            {
                                                               addr225:
                                                               §§push(_loc5_);
                                                               if(!_loc7_)
                                                               {
                                                                  addr228:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr231:
                                                                        §§push(2);
                                                                        if(!_loc6_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr238);
                                                                     }
                                                                     §§goto(addr261);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr236:
                                                                     §§push("B20010");
                                                                     §§push(_loc5_);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  §§goto(addr238);
                                                               }
                                                               else
                                                               {
                                                                  §§push(4);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr225);
                                                }
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr225);
                                       }
                                       §§goto(addr231);
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                 }
                                 §§goto(addr277);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr92);
                     }
                     else
                     {
                        §§goto(addr67);
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
      
      public function §=,§() : String
      {
         return §@q§.§%"$§;
      }
      
      public function §8"3§() : String
      {
         return LevelManager.§ T§;
      }
   }
}
