package §7"@§
{
   import §#!e§.§ <§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §%!v§.§[<§;
   import §&q§.§'!T§;
   import §'!s§.§"!§;
   import §'!s§.§%?§;
   import §+N§.§@!]§;
   import §2!i§.§'M§;
   import §4!e§.§^!D§;
   import §=,§.UserProgressEvent;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   
   public class §2@§ extends §<!z§
   {
       
      
      private var §?"9§:§"!§;
      
      private var §-!s§:String;
      
      private var §1!r§:§'!T§ = null;
      
      public function §2@§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!(_loc3_ && this))
         {
            super.activate();
            loop0:
            while(true)
            {
               §§push(§#6§.§ q§);
               while(true)
               {
                  (§§pop() as §3T§).§`!P§(§ K§.§2_§);
                  addr315:
                  while(true)
                  {
                     §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
                  }
                  loop24:
                  while(true)
                  {
                     §§push(§#6§.§ q§);
                     if(!(_loc4_ || this))
                     {
                        break;
                     }
                     (§§pop() as §3T§).§9!Q§.§`W§ = false;
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           return;
                        }
                        loop25:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop24;
                           }
                           if(!_loc3_)
                           {
                              §6w§.getItemByName("Button_NextLevel").setVisibility(false);
                              loop26:
                              while(true)
                              {
                                 loop22:
                                 while(true)
                                 {
                                    (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
                                    addr63:
                                    loop23:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop26;
                                          }
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr74:
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                break;
                                             }
                                             if(!_loc4_)
                                             {
                                                break loop22;
                                             }
                                             continue loop24;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr186:
                                             loop12:
                                             while(_loc4_ || this)
                                             {
                                                §§push("1000");
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc4_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  loop19:
                                                                  while(_loc4_)
                                                                  {
                                                                     §§pop();
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr117:
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() == null);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop25;
                                                                                       }
                                                                                       addr293:
                                                                                       addr94:
                                                                                       (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(true);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          addr96:
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             addr103:
                                                                                             if(!(_loc4_ || _loc2_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop22;
                                                                                          }
                                                                                          addr242:
                                                                                          addr205:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && this))
                                                                                             {
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   continue loop13;
                                                                                                }
                                                                                                §§goto(addr315);
                                                                                             }
                                                                                             break;
                                                                                             §§goto(addr96);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§push(LevelManager.§9"D§().name);
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      break loop12;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                break loop12;
                                                                                             }
                                                                                             addr306:
                                                                                             addr266:
                                                                                             while(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(true);
                                                                                                continue loop24;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §#6§.§6!z§.background.§^!P§();
                                                                                                break loop23;
                                                                                                §§goto(addr266);
                                                                                             }
                                                                                             addr266:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc1_ = §§pop();
                                                                                             §§goto(addr243);
                                                                                          }
                                                                                          addr243:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(LevelManager.§%^§());
                                                                                          §§goto(addr103);
                                                                                       }
                                                                                    }
                                                                                    addr130:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr197:
                                                                                    while(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr205);
                                                                                    }
                                                                                    addr197:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§push(LevelManager.§6!M§());
                                                                                       break loop20;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
                                                                                       §§goto(addr266);
                                                                                    }
                                                                                    §§goto(addr197);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr242);
                                                                        §§goto(addr117);
                                                                     }
                                                                  }
                                                                  continue loop14;
                                                                  addr180:
                                                               }
                                                               §§goto(addr130);
                                                            }
                                                            continue;
                                                            addr170:
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                continue loop11;
                                                §§goto(addr186);
                                             }
                                          }
                                       }
                                       §§goto(addr94);
                                    }
                                    while(true)
                                    {
                                       §6w§.getItemByName("Button_FreePowerups").setVisibility(§3T§.§67§.§0+§.§3"F§);
                                       §§goto(addr293);
                                       §§goto(addr74);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr259);
                        }
                     }
                     §§goto(addr63);
                  }
               }
            }
         }
         §§goto(addr306);
      }
      
      override protected function onCountComplete() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         if(!(_loc4_ && _loc3_))
         {
            super.onCountComplete();
            loop0:
            do
            {
               if(§#6§.§'" §.getEagleScore() != 100)
               {
                  §6w§.getItemByName("Button_Share_ME").setVisibility(false);
                  loop1:
                  for(; !_loc4_; §6w§.getItemByName("Button_Share_Default").setVisibility(true),if(_loc3_ || _loc3_)
                  {
                     if(_loc4_ && _loc1_)
                     {
                        addr95:
                     }
                     return;
                  })
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc3_ || _loc1_)
                           {
                              continue;
                           }
                           addr188:
                           while(true)
                           {
                              §6w§.getItemByName("Button_Share_Default").setVisibility(false);
                              addr176:
                              while(true)
                              {
                                 §§push(Number(§6w§.getItemByName("Button_Share_ME").x + §6w§.getItemByName("Container_LevelEndEagleStripe").x));
                                 addr168:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(Number(§6w§.getItemByName("Button_Share_ME").y + §6w§.getItemByName("Container_LevelEndEagleStripe").y));
                           if(_loc4_ && _loc1_)
                           {
                              continue;
                           }
                           _loc2_ = §§pop();
                        }
                        continue loop0;
                     }
                     while(true)
                     {
                        this.§1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc1_,_loc2_,§'!T§.§>^§,20);
                        break loop1;
                     }
                  }
                  while(true)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        if(!(_loc4_ && _loc1_))
                        {
                           continue loop0;
                        }
                        addr183:
                        while(true)
                        {
                           §6w§.getItemByName("Button_Share_ME").setVisibility(true);
                           §§goto(addr188);
                        }
                     }
                     §§goto(addr176);
                  }
               }
               §§goto(addr183);
            }
            while(_loc4_);
            
            §6w§.addChild(this.§1!r§);
         }
         §§goto(addr95);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§1!r§);
            if(_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().update(param1);
         }
         addr49:
         if(_loc2_ || param1)
         {
            §§push(this.§1!r§);
         }
         return super.run(param1);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6w§.getItemByName("Button_Share_ME").setVisibility(false);
            loop0:
            while(true)
            {
               §6w§.getItemByName("Button_Share_Default").setVisibility(false);
               loop1:
               while(true)
               {
                  §§push(this.§1!r§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           super.deActivate();
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr89:
                              while(true)
                              {
                                 if(!§6w§.contains(this.§1!r§))
                                 {
                                    continue loop2;
                                 }
                                 if(!(_loc1_ && this))
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop0;
                           }
                           addr46:
                           while(!_loc1_)
                           {
                              if(_loc1_ && _loc1_)
                              {
                              }
                              continue loop8;
                           }
                           continue loop1;
                           while(true)
                           {
                              continue loop2;
                              §§goto(addr48);
                           }
                        }
                        return;
                        addr41:
                     }
                     §§goto(addr89);
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Array = ["NEXT_LEVEL","REPLAY","WATCH_REPLAY","MENU"];
         if(_loc7_ || param3)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            loop0:
            while(true)
            {
               §§push((§§pop() as §[<§).§7!I§);
               addr242:
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
                           addr246:
                           while(true)
                           {
                              §§push(_loc4_.indexOf(param2) == -1);
                              if(_loc7_ || param2)
                              {
                                 if(!(_loc7_ || param3))
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                              }
                              if(_loc6_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              super.uiInteractionHandler(param1,param2,param3);
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop6;
                                 }
                                 if(!(_loc6_ && param3))
                                 {
                                    if(param2 == "MENU")
                                    {
                                       if(_loc6_ && param3)
                                       {
                                          continue;
                                       }
                                       if(_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       addr232:
                                       this.§?"9§ = §%?§.§@-§();
                                       while(true)
                                       {
                                          this.§-!s§ = param2;
                                          continue loop0;
                                       }
                                       addr236:
                                    }
                                    break;
                                 }
                                 while(!_loc7_)
                                 {
                                    (§§pop() as §[<§).addEventListener(UserProgressEvent.§+!f§,this.onUserProgressSaved);
                                 }
                                 if(!_loc6_)
                                 {
                                    break loop5;
                                 }
                                 §§goto(addr246);
                                 §§goto(addr236);
                              }
                              var _loc5_:* = param2;
                              if(_loc7_ || param2)
                              {
                                 §§push("SHARE_ME");
                                 if(!_loc6_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_ || this)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc7_ || param2)
                                          {
                                             §§push(0);
                                             if(!(_loc7_ || param1))
                                             {
                                                addr337:
                                             }
                                          }
                                          else
                                          {
                                             addr334:
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                                §§goto(addr337);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("SHARE_DEFAULT");
                                          if(_loc7_ || param3)
                                          {
                                             addr295:
                                             §§push(_loc5_);
                                             if(_loc7_)
                                             {
                                                addr298:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(1);
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr354);
                                                      }
                                                      addr349:
                                                      addr354:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            AngryBirdsFP11.§@<§.§#m§();
                                                            §§push(§@!]§);
                                                            §§push("shareFeather");
                                                            §§push(LevelManager.§'!O§);
                                                            §§push(LevelManager.§9"D§().writtenName + "-");
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§push(§§pop() + § <§.§2!V§(LevelManager.§'!O§));
                                                            }
                                                            §§pop().§9"'§(§§pop(),§§pop(),§§pop());
                                                            break;
                                                            addr132:
                                                            addr153:
                                                         case 1:
                                                            §§push(§@!]§);
                                                            §§push("shareDefault");
                                                            §§push(LevelManager.§'!O§);
                                                            §§push(LevelManager.§9"D§().writtenName + "-");
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() + § <§.§2!V§(LevelManager.§'!O§));
                                                            }
                                                            §§pop().§9"'§(§§pop(),§§pop(),§§pop(),0,true);
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_ || param3)
                                                               {
                                                                  addr50:
                                                                  break;
                                                               }
                                                               §§goto(addr132);
                                                            }
                                                            break;
                                                         case 2:
                                                            §§push(§%?§);
                                                            §§push(LevelManager.§'!O§);
                                                            §§push(LevelManager.§9"D§().writtenName + "-");
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               §§push(§§pop() + § <§.§2!V§(LevelManager.§'!O§));
                                                            }
                                                            §§pop().§"!C§(§§pop(),§§pop(),0,"me");
                                                            break;
                                                            addr76:
                                                         case 3:
                                                            §%?§.§-!?§();
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr50);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr153);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr76);
                                                               }
                                                            }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr354);
                                                }
                                                else
                                                {
                                                   §§push("EMBED");
                                                   if(_loc7_ || this)
                                                   {
                                                      addr313:
                                                      §§push(_loc5_);
                                                      if(!_loc6_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§goto(addr334);
                                                            }
                                                            else
                                                            {
                                                               addr341:
                                                               §§push(3);
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr354);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("FREE_POWERUPS");
                                                         }
                                                         §§goto(addr341);
                                                      }
                                                      addr340:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr341);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr354);
                                                         §§push(4);
                                                      }
                                                      §§goto(addr354);
                                                   }
                                                   §§goto(addr340);
                                                   §§push(_loc5_);
                                                }
                                                §§goto(addr341);
                                             }
                                             §§goto(addr340);
                                          }
                                          §§goto(addr313);
                                       }
                                       §§goto(addr354);
                                    }
                                    §§goto(addr298);
                                 }
                                 §§goto(addr295);
                              }
                              §§goto(addr334);
                           }
                        }
                        §§goto(addr232);
                     }
                     return;
                  }
               }
            }
            addr239:
         }
         while(true)
         {
            §§push(AngryBirdsFP11.sUserProgress);
            if(_loc7_)
            {
               §§goto(addr188);
            }
            else
            {
               §§goto(addr239);
            }
         }
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:§>x§ = LevelManager.§9"D§();
         if(!_loc3_)
         {
            §§push(_loc2_.name);
            loop0:
            while(true)
            {
               §§push(§]!K§.§"!x§);
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(_loc2_.name);
                     loop2:
                     while(true)
                     {
                        §§push(§]!K§.§9a§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(_loc2_.name);
                                             if(_loc4_ || this)
                                             {
                                                §§push(§]!K§.EPISODE_GREEN_DAY_EGG);
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() == §§pop());
                                                if(!_loc4_)
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§1!J§.STATE_NAME);
                                                         addr132:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc1_ = §§pop();
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     addr27:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(§§pop() == null)
                                                                           {
                                                                              §§push(§8"D§.STATE_NAME);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr91:
                                                                                 §§push(§§pop());
                                                                                 break;
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                           break;
                                                                        }
                                                                        addr69:
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           addr99:
                                                                           return §§pop();
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  addr177:
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc1_ = §§pop();
                                                                  addr179:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      addr130:
                                                   }
                                                   §§goto(addr27);
                                                }
                                             }
                                             §§goto(addr132);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr175:
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr179);
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr128);
                           }
                        }
                     }
                  }
                  §§goto(addr175);
               }
            }
         }
         §§goto(addr130);
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            (AngryBirdsFP11.sUserProgress as §[<§).removeEventListener(UserProgressEvent.§+!f§,this.onUserProgressSaved);
            loop0:
            while(true)
            {
               §§push(this.§?"9§);
               if(!(_loc3_ && this))
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§?"9§);
                        addr104:
                        while(true)
                        {
                           §§pop().close();
                           loop6:
                           while(true)
                           {
                              this.§?"9§ = null;
                              addr71:
                              addr90:
                              while(true)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.uiInteractionHandler(-1,this.§-!s§,null);
                     while(true)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr71);
                     }
                     continue loop0;
                     §§goto(addr90);
                  }
               }
               §§goto(addr104);
            }
         }
         §§goto(addr39);
      }
      
      override protected function saveNewHighScore(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.saveNewHighScore(param1);
         }
         while(true)
         {
            (§#6§.§ q§ as §3T§).newUserScore(LevelManager.§'!O§);
            while(_loc3_)
            {
               (AngryBirdsFP11.sUserProgress as §[<§).saveLevelProgress(LevelManager.§'!O§,true);
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
         }
      }
   }
}
