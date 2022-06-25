package §`!#§
{
   import §"!i§.LevelManager;
   import §+!f§.§@!c§;
   import §2!U§.§=<§;
   import §2y§.§7!p§;
   import §2y§.§[!i§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §>!q§.§;!J§;
   import §>L§.§+!i§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §[!1§.UserProgressEvent;
   import §[!b§.§-!Q§;
   import §[;§.§#!6§;
   import §^!m§.§4!i§;
   import §^!m§.§^!S§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §?c§ extends §=<§
   {
       
      
      private var §"" §:§^!S§;
      
      private var §;!6§:String;
      
      private var §`K§:String;
      
      protected var §^8§:Boolean = false;
      
      private var §6f§:Boolean = false;
      
      public function §?c§(param1:Boolean = false, param2:String = "LevelEndStateRio")
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            do
            {
               §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            while(true)
            {
               (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§6!;§);
               loop1:
               while(!(_loc2_ && this))
               {
                  §,!s§.§=!I§.background.§4!=§();
                  loop2:
                  while(true)
                  {
                     if(LevelManager.§+!$§().name != "1000")
                     {
                        while(this.§^8§)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 continue loop2;
                              }
                              addr36:
                              if(_loc1_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 this.§`!5§();
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §'!Q§.getItemByName("Button_NextLevel").setVisibility(false);
                                    continue loop2;
                                    §§goto(addr36);
                                 }
                                 addr64:
                              }
                           }
                           break;
                        }
                        return;
                        addr23:
                     }
                     §§goto(addr64);
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §'!Q§.getItemByName("Button_Share_Default").setVisibility(false);
            while(true)
            {
               §'!Q§.getItemByName("Button_Share_Crown").setVisibility(false);
               while(!_loc1_)
               {
                  §'!Q§.getItemByName("Button_Share_Stars").setVisibility(false);
                  if(!(_loc1_ && _loc2_))
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         while(true)
         {
            this.§6f§ = false;
            while(_loc2_ || _loc2_)
            {
               super.deActivate();
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr44);
            }
         }
         §§goto(addr51);
      }
      
      protected function §`!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §'!Q§.getItemByName("Button_Share_Default").setVisibility(false);
            loop0:
            do
            {
               §'!Q§.getItemByName("Button_Share_Crown").setVisibility(false);
               while(true)
               {
                  §'!Q§.getItemByName("Button_Share_Stars").setVisibility(false);
                  while(!(_loc1_ && this))
                  {
                     §'!Q§.getItemByName("Button_Embed").setVisibility(false);
                     if(_loc2_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_)
         {
            super.onBadgeLanded();
         }
         §§push((AngryBirdsFP11.sUserProgress as §#!6§).§@z§(LevelManager.§"L§));
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §#!6§).getEagleScoreForLevel(LevelManager.§"L§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§^8§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  this.§`!5§();
                  if(!(_loc5_ && _loc3_))
                  {
                     if(_loc6_ || _loc2_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           if(_loc6_ || _loc1_)
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          loop0:
                                          while(true)
                                          {
                                             §'!Q§.getItemByName("Button_Share_Stars").setVisibility(true);
                                             loop1:
                                             for(; !(_loc5_ && _loc1_); if(_loc5_ && this)
                                             {
                                                continue;
                                             },§§goto(addr188))
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(Number(§'!Q§.getItemByName("Button_Share_Stars").x + §'!Q§.getItemByName("Container_LevelEndStripe").x));
                                                   loop2:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr264:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(Number(§'!Q§.getItemByName("Button_Share_Crown").x + §'!Q§.getItemByName("Container_LevelEndStripe").x));
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§'!Q§.getItemByName("Button_Share_Crown").y + §'!Q§.getItemByName("Container_LevelEndStripe").y));
                                                                     addr380:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §`!_§ = new §;!J§(AngryBirdsFP11.§!Z§,AngryBirdsFP11.§2" §,_loc3_,_loc4_,§;!J§.§8o§,20);
                                                                           while(true)
                                                                           {
                                                                              §'!Q§.addChild(§`!_§);
                                                                              loop8:
                                                                              while(_loc5_ && this)
                                                                              {
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_ == 1);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       loop10:
                                                                                       while(!§§pop())
                                                                                       {
                                                                                          if(§ P§)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   this.§`K§ = "stars";
                                                                                                   break loop1;
                                                                                                }
                                                                                                addr325:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc6_ || _loc1_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                }
                                                                                             }
                                                                                             continue loop0;
                                                                                             addr314:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr152:
                                                                                          }
                                                                                          this.§`K§ = "";
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §'!Q§.getItemByName("Button_Share_Default").setVisibility(true);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §'!Q§.getItemByName("Button_Share_Crown").setVisibility(false);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §'!Q§.getItemByName("Button_Share_Stars").setVisibility(false);
                                                                                                      addr115:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc6_ || _loc1_)
                                                                                                            {
                                                                                                               addr58:
                                                                                                               return;
                                                                                                               addr62:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §5!x§.push(§`!_§);
                                                                                                                  addr179:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     addr225:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           break loop10;
                                                                                                                        }
                                                                                                                        §'!Q§.addChild(§`!_§);
                                                                                                                        continue loop32;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr200:
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc6_ || _loc1_)
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§goto(addr62);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§=P§));
                                                                                                                        addr449:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr447:
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §'!Q§.getItemByName("Button_Share_Default").setVisibility(false);
                                                                                                                  }
                                                                                                                  addr441:
                                                                                                               }
                                                                                                            }
                                                                                                            addr160:
                                                                                                         }
                                                                                                         §§goto(addr62);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr138:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §'!Q§.getItemByName("Button_Share_Crown").setVisibility(true);
                                                                                                addr410:
                                                                                                while(true)
                                                                                                {
                                                                                                   §'!Q§.getItemByName("Button_Share_Stars").setVisibility(false);
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr62);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.§`K§ = "crown";
                                                                                          §§goto(addr441);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr449);
                                                                                 }
                                                                              }
                                                                              §5!x§.push(§`!_§);
                                                                              addr188:
                                                                              if(!(_loc6_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §-!Q§.§#3§("Hiscore_Star_Splash1",§+!r§);
                                                                              §§goto(addr160);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §-!Q§.§#3§("Hiscore_Star_Splash1",§+!r§);
                                                            §§goto(addr325);
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                                §§goto(addr314);
                                             }
                                             §'!Q§.getItemByName("Button_Share_Default").setVisibility(false);
                                          }
                                       }
                                       §§goto(addr58);
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr249);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr115);
               }
               §§goto(addr447);
            }
            §§goto(addr449);
         }
         §§goto(addr200);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:URLRequest = null;
         var _loc7_:* = 0;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if(_loc10_ || param3)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            loop0:
            while(true)
            {
               §§push((§§pop() as §#!6§).§;!1§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr159:
                           while(true)
                           {
                              §§push(_loc4_.indexOf(param2) == -1);
                              if(_loc10_ || param2)
                              {
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                              }
                              if(_loc9_ && param3)
                              {
                                 continue loop3;
                              }
                              if(!_loc10_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           do
                           {
                              super.uiInteractionHandler(param1,param2,param3);
                              if(_loc10_)
                              {
                                 if(_loc9_ && param1)
                                 {
                                    while(_loc9_)
                                    {
                                       while(true)
                                       {
                                          this.§"" § = §4!i§.§+!+§();
                                       }
                                    }
                                    return;
                                    addr108:
                                 }
                                 if(!_loc9_)
                                 {
                                    break loop5;
                                 }
                                 while(true)
                                 {
                                    if(!_loc9_)
                                    {
                                       this.§;!6§ = param2;
                                       break loop6;
                                    }
                                    §§goto(addr159);
                                    §§goto(addr143);
                                 }
                                 continue loop0;
                              }
                           }
                           while(!(_loc9_ && param3));
                           
                           continue loop0;
                        }
                        §§goto(addr143);
                     }
                  }
               }
            }
         }
         var _loc8_:* = param2;
         if(_loc10_ || param2)
         {
            §§push("FRIENDS_BUTTON");
            if(_loc10_ || param2)
            {
               §§push(_loc8_);
               if(_loc10_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc10_)
                     {
                        §§push(0);
                        if(!(_loc10_ || param1))
                        {
                           addr495:
                        }
                     }
                     else
                     {
                        addr499:
                        §§push(4);
                        if(!_loc10_)
                        {
                        }
                     }
                     §§goto(addr507);
                  }
                  else
                  {
                     §§push("SHARE_CROWN");
                     if(!(_loc9_ && param1))
                     {
                        §§push(_loc8_);
                        if(!(_loc9_ && this))
                        {
                           addr428:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc9_)
                              {
                                 §§push(1);
                                 if(_loc9_)
                                 {
                                    addr462:
                                 }
                              }
                              else
                              {
                                 §§goto(addr499);
                              }
                              §§goto(addr507);
                           }
                           else
                           {
                              §§push("SHARE_STARS");
                              if(_loc10_ || param2)
                              {
                                 addr443:
                                 §§push(_loc8_);
                                 if(_loc10_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc9_ && this))
                                       {
                                          addr454:
                                          §§push(2);
                                          if(_loc10_ || param2)
                                          {
                                             §§goto(addr462);
                                          }
                                          else
                                          {
                                             §§goto(addr495);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr499);
                                       }
                                    }
                                    else
                                    {
                                       §§push("SHARE_DEFAULT");
                                       if(_loc10_ || param2)
                                       {
                                       }
                                       addr497:
                                       if(§§pop() === _loc8_)
                                       {
                                          §§goto(addr499);
                                       }
                                       else
                                       {
                                          §§push(5);
                                       }
                                    }
                                    §§goto(addr507);
                                 }
                                 addr489:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc10_)
                                    {
                                       §§push(3);
                                       if(!_loc9_)
                                       {
                                          §§goto(addr495);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr499);
                                    }
                                    addr507:
                                    loop16:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc5_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                                          loop11:
                                          while(true)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §!!K§.§%$§(_loc5_);
                                                while(true)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §<t§.§`n§.§5!M§();
                                                      if(_loc9_)
                                                      {
                                                         break loop16;
                                                      }
                                                      if(_loc10_ || param3)
                                                      {
                                                         if(true)
                                                         {
                                                            _loc6_ = new URLRequest(_loc5_);
                                                            if(_loc10_ || param1)
                                                            {
                                                               navigateToURL(_loc6_,"_blank");
                                                               break loop16;
                                                               addr371:
                                                            }
                                                            else
                                                            {
                                                               addr263:
                                                            }
                                                         }
                                                         continue loop12;
                                                         break loop16;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop11;
                                                }
                                                break loop16;
                                             }
                                          }
                                          break;
                                       case 1:
                                          addr365:
                                          AngryBirdsFP11.§'!g§.§5!M§();
                                          loop14:
                                          while(true)
                                          {
                                             §§push((AngryBirdsFP11.sUserProgress as §#!6§).§@z§(LevelManager.§"L§));
                                             if(!(_loc9_ && param1))
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             _loc7_ = §§pop();
                                             addr352:
                                             while(true)
                                             {
                                                if(!(_loc9_ && param1))
                                                {
                                                   break loop14;
                                                }
                                                continue loop14;
                                             }
                                          }
                                          §§push(§+!i§);
                                          §§push("shareCrown");
                                          §§push(LevelManager.§"L§);
                                          §§push(LevelManager.§+!$§().writtenName + "-");
                                          if(_loc10_ || param3)
                                          {
                                             §§push(§§pop() + §@!c§.§<!N§(LevelManager.§"L§));
                                          }
                                          §§pop().§>!y§(§§pop(),§§pop(),§§pop(),_loc7_,§,!s§.§ Q§.getScore());
                                          break;
                                          addr366:
                                          addr334:
                                       case 2:
                                          §§push(AngryBirdsFP11.§'!g§);
                                          if(!(_loc9_ && param2))
                                          {
                                             §§pop().§5!M§();
                                             §§push(§+!i§);
                                             §§push("shareThreeStars");
                                             §§push(LevelManager.§"L§);
                                             §§push(LevelManager.§+!$§().writtenName + "-");
                                             if(!(_loc9_ && param2))
                                             {
                                                §§push(§§pop() + §@!c§.§<!N§(LevelManager.§"L§));
                                             }
                                             §§pop().§>!y§(§§pop(),§§pop(),§§pop(),§,!s§.§ Q§.getScore());
                                             addr290:
                                             if(_loc10_)
                                             {
                                                addr211:
                                                break;
                                             }
                                             §§goto(addr352);
                                             addr306:
                                          }
                                          else
                                          {
                                             §§goto(addr365);
                                          }
                                          §§goto(addr366);
                                       case 3:
                                          §§push(§+!i§);
                                          §§push("shareDefault");
                                          §§push(LevelManager.§"L§);
                                          §§push(LevelManager.§+!$§().writtenName + "-");
                                          if(_loc10_)
                                          {
                                             §§push(§§pop() + §@!c§.§<!N§(LevelManager.§"L§));
                                          }
                                          §§pop().§>!y§(§§pop(),§§pop(),§§pop(),§,!s§.§ Q§.getScore(),true);
                                          addr235:
                                          if(!_loc9_)
                                          {
                                             if(!(_loc9_ && param2))
                                             {
                                                if(_loc10_ || param3)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr263);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr371);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr306);
                                             }
                                             §§goto(addr334);
                                          }
                                          §§goto(addr290);
                                       case 4:
                                          §§push(§4!i§);
                                          §§push(LevelManager.§"L§);
                                          §§push(LevelManager.§+!$§().writtenName + "-");
                                          if(!(_loc9_ && this))
                                          {
                                             §§push(§§pop() + §@!c§.§<!N§(LevelManager.§"L§));
                                          }
                                          §§pop().§4!x§(§§pop(),§§pop(),§,!s§.§ Q§.getScore(),this.§`K§);
                                          if(!(_loc9_ && param2))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr235);
                                          }
                                          §§goto(addr211);
                                    }
                                    return;
                                 }
                                 §§goto(addr497);
                                 §§push("EMBED");
                                 §§goto(addr499);
                              }
                              §§push(_loc8_);
                              if(!(_loc9_ && param3))
                              {
                                 §§goto(addr489);
                              }
                              §§goto(addr497);
                           }
                        }
                        §§goto(addr489);
                     }
                     §§goto(addr497);
                  }
               }
               §§goto(addr428);
            }
            §§goto(addr443);
         }
         §§goto(addr454);
      }
      
      protected function §>!T§(param1:UserProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            (AngryBirdsFP11.sUserProgress as §#!6§).removeEventListener(UserProgressEvent.§ ?§,this.§>!T§);
            loop0:
            while(true)
            {
               §§push(this.§"" §);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§push(this.§"" §);
                        addr89:
                        while(true)
                        {
                           §§pop().close();
                           addr90:
                           while(true)
                           {
                              this.§"" § = null;
                              addr71:
                              addr78:
                              while(!(_loc2_ || _loc2_))
                              {
                                 continue loop6;
                              }
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr87:
                  }
                  while(true)
                  {
                     this.uiInteractionHandler(-1,this.§;!6§,null);
                     while(!(_loc3_ && this))
                     {
                        this.§;!6§ = null;
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           return;
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr90);
                     §§goto(addr78);
                  }
                  continue;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr87);
      }
      
      protected function saveLevelProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            (§,!s§.§]!J§ as §<t§).newUserScore(LevelManager.§"L§);
            do
            {
               (AngryBirdsFP11.sUserProgress as §#!6§).saveLevelProgress(LevelManager.§"L§);
            }
            while(!_loc1_);
            
         }
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§"L§));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§,!s§.§ Q§.getScore());
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_)
         {
            §=P§ = _loc3_ > _loc2_;
            if(_loc6_)
            {
               §"!m§(_loc3_,_loc2_);
            }
         }
         §§push(AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§"L§,_loc3_));
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            (§'!Q§.getItemByName("MovieClip_NewHighScoreBadge") as §7!p§).setVisibility(false);
            while(true)
            {
               (§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).mClip.gotoAndStop("UnLit");
               loop1:
               for(; !(_loc7_ && _loc1_); if(_loc7_ && _loc3_)
               {
                  continue;
               },§§goto(addr75))
               {
                  (§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).mClip.gotoAndStop("UnLit");
                  loop2:
                  while(true)
                  {
                     (§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).mClip.gotoAndStop("UnLit");
                     addr130:
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           if(!§=P§)
                           {
                              while(true)
                              {
                                 (§,!s§.§]!J§ as §<t§).§`X§.§!r§ = false;
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    addr107:
                                    while(_loc6_)
                                    {
                                       this.saveLevelProgress();
                                    }
                                    continue loop2;
                                 }
                                 while(!_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              if(true)
                              {
                                 break;
                              }
                              continue;
                              addr75:
                           }
                           §§goto(addr107);
                        }
                        §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
                        if(!(_loc7_ && _loc3_))
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc5_:* = §§pop();
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(param1);
         }
         while(true)
         {
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(param1);
            while(_loc2_)
            {
               (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setComponentVisualState(param1);
               while(!(_loc3_ && this))
               {
                  (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setComponentVisualState(param1);
                  if(!_loc3_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §@X§.push((§'!Q§.getItemByName("Button_Menu") as §[!i§).x);
            while(true)
            {
               §@X§.push((§'!Q§.getItemByName("Button_Replay") as §[!i§).x);
               while(_loc1_)
               {
                  §@X§.push((§'!Q§.getItemByName("Button_NextLevel") as §[!i§).x);
                  while(_loc1_ || this)
                  {
                     §@X§.push((§'!Q§.getItemByName("Button_CutScene") as §[!i§).x);
                     if(!(_loc2_ && _loc1_))
                     {
                        return;
                        addr54:
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      override protected function getViewXML() : XML
      {
         return §2!z§.§ _§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(AngryBirdsFP11.sUserProgress.§8!N§(LevelManager.§"L§))
            {
               (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(true);
               loop0:
               for(; !_loc2_; if(_loc2_ && this)
               {
                  continue;
               },if(!_loc2_)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr19);
                  }
                  else
                  {
                     §§goto(addr256);
                  }
               },§§goto(addr182))
               {
                  (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
                  loop1:
                  while(_loc1_ || _loc2_)
                  {
                     if(_loc1_ || this)
                     {
                        (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
                        loop2:
                        while(!_loc2_)
                        {
                           (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(true);
                           loop3:
                           for(; !_loc2_; if(!(_loc1_ || this))
                           {
                              continue;
                           },if(!_loc2_)
                           {
                              §§goto(addr80);
                           },§§goto(addr233))
                           {
                              (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = §@X§[0];
                              loop4:
                              while(true)
                              {
                                 (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = §@X§[1];
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop4;
                                    addr80:
                                    (§'!Q§.getItemByName("Button_CutScene") as §[!i§).x = §@X§[2];
                                    if(!_loc2_)
                                    {
                                       if(_loc1_ || this)
                                       {
                                          continue loop0;
                                       }
                                       continue loop2;
                                       continue loop2;
                                    }
                                 }
                                 addr233:
                                 (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(true);
                                 break loop0;
                              }
                           }
                           continue loop1;
                        }
                        (§'!Q§.getItemByName("Button_CutScene") as §[!i§).x = §@X§[1] + Math.abs(§@X§[2] - §@X§[1]) / 2;
                        addr19:
                        return;
                        addr182:
                        addr205:
                     }
                     else
                     {
                        addr256:
                        addr249:
                     }
                     (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(false);
                     (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
                     break;
                  }
                  (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
                  §§goto(addr233);
               }
               (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = §@X§[0] + Math.abs(§@X§[1] - §@X§[0]) / 2;
               §§goto(addr205);
            }
            §§goto(addr249);
         }
         §§goto(addr242);
      }
      
      override protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(true);
            loop0:
            do
            {
               (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
               loop1:
               while(true)
               {
                  (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(false);
                  loop2:
                  do
                  {
                     if(LevelManager.§8`§())
                     {
                        continue;
                     }
                     (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
                     while(_loc1_)
                     {
                        if(!_loc1_)
                        {
                           (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).x = §@X§[2];
                           break;
                        }
                        addr147:
                        if(_loc1_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = §@X§[0] + Math.abs(§@X§[1] - §@X§[0]) / 2;
                        do
                        {
                           (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = §@X§[1] + Math.abs(§@X§[2] - §@X§[1]) / 2;
                        }
                        while(_loc2_);
                        
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        if(!(_loc2_ && this))
                        {
                           §§goto(addr19);
                        }
                        loop5:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = §@X§[0];
                              continue loop5;
                           }
                        }
                        (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = §@X§[1];
                        §§goto(addr147);
                     }
                     continue loop0;
                  }
                  while(!_loc1_);
                  
                  (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(true);
               }
            }
            while(!(_loc1_ || _loc2_));
            
            addr19:
            return;
         }
         §§goto(addr184);
      }
   }
}
