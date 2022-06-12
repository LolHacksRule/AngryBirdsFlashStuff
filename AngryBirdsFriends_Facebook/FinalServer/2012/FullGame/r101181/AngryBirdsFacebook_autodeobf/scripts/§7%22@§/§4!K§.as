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
   import §6!B§.§>!E§;
   import §=,§.UserProgressEvent;
   import §@">§.§%!0§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   
   public class §4!K§ extends §&!>§
   {
       
      
      private var §?"9§:§"!§;
      
      private var §-!s§:String;
      
      private var §4!=§:String;
      
      protected var §!"+§:Boolean = false;
      
      private var §^8§:Boolean = false;
      
      public function §4!K§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
            do
            {
               §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
               do
               {
                  §6w§.getItemByName("Button_Watch_Replay").setVisibility(false);
               }
               while(!(_loc1_ || this));
               
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      override public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super.activate();
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  (§#6§.§ q§ as §3T§).§`!P§(§ K§.§2_§);
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr39);
         }
         §§push(LevelManager.§6!M§());
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:Array = LevelManager.§'!O§.split("-");
         var _loc3_:String = _loc2_[0];
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc3_);
            loop4:
            while(true)
            {
               §§push("1000");
               loop5:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop());
                     loop6:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr220:
                           while(true)
                           {
                              §§pop();
                              addr221:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr180:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop4;
                                    }
                                    §§push("3001");
                                    if(_loc4_ && this)
                                    {
                                       continue loop5;
                                    }
                                    §§push(§§pop() == §§pop());
                                 }
                              }
                           }
                           addr220:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc4_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    addr207:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() == null);
                                       continue loop9;
                                    }
                                    §§goto(addr180);
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr170);
                                 }
                                 §§goto(addr131);
                              }
                           }
                           continue loop6;
                        }
                     }
                  }
                  §§goto(addr220);
               }
            }
         }
         §§goto(addr221);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §6w§.getItemByName("Button_Share_Default").setVisibility(false);
            loop0:
            while(true)
            {
               §6w§.getItemByName("Button_Share_Crown").setVisibility(false);
               loop1:
               while(true)
               {
                  §6w§.getItemByName("Button_Share_Stars").setVisibility(false);
                  while(true)
                  {
                     §6w§.getItemByName("Button_Share_ME").setVisibility(false);
                     continue loop1;
                     loop5:
                     while(!(_loc2_ && _loc1_))
                     {
                        super.deActivate();
                        if(!(_loc2_ && _loc1_))
                        {
                           if(_loc2_)
                           {
                              addr40:
                              while(true)
                              {
                                 this.§^8§ = false;
                                 continue loop5;
                              }
                              return;
                           }
                           addr64:
                           addr80:
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      protected function §-!U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6w§.getItemByName("Button_Share_Default").setVisibility(false);
         }
         loop0:
         do
         {
            §6w§.getItemByName("Button_Share_Crown").setVisibility(false);
            while(true)
            {
               §6w§.getItemByName("Button_Share_Stars").setVisibility(false);
               while(_loc2_ || this)
               {
                  §6w§.getItemByName("Button_Share_ME").setVisibility(false);
                  do
                  {
                     §6w§.getItemByName("Button_Embed").setVisibility(false);
                  }
                  while(_loc1_ && _loc2_);
                  
                  if(!_loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_ || _loc2_)
         {
            super.onBadgeLanded();
         }
         §§push((AngryBirdsFP11.sUserProgress as §[<§).§#!o§(LevelManager.§'!O§));
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = (AngryBirdsFP11.sUserProgress as §[<§).getEagleScoreForLevel(LevelManager.§'!O§);
         if(_loc6_)
         {
            §§push(this.§!"+§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  this.§-!U§();
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        if(_loc5_ && _loc1_)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc6_ || _loc1_)
                              {
                                 §6w§.getItemByName("Button_Share_ME").setVisibility(false);
                                 loop2:
                                 while(true)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(Number(§6w§.getItemByName("Button_Share_Stars").x + §6w§.getItemByName("Container_LevelEndStripe").x));
                                       loop3:
                                       while(true)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   continue loop3;
                                                }
                                                addr480:
                                                while(true)
                                                {
                                                   §6w§.getItemByName("Button_Share_Default").setVisibility(false);
                                                   addr444:
                                                   while(true)
                                                   {
                                                      §6w§.getItemByName("Button_Share_Crown").setVisibility(true);
                                                      addr437:
                                                      while(true)
                                                      {
                                                         §6w§.getItemByName("Button_Share_Stars").setVisibility(false);
                                                         addr430:
                                                         while(true)
                                                         {
                                                            §6w§.getItemByName("Button_Share_ME").setVisibility(false);
                                                            addr423:
                                                            while(true)
                                                            {
                                                               §§push(Number(§6w§.getItemByName("Button_Share_Crown").x + §6w§.getItemByName("Container_LevelEndStripe").x));
                                                               addr415:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr416:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§6w§.getItemByName("Button_Share_Crown").y + §6w§.getItemByName("Container_LevelEndStripe").y));
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                loop7:
                                                while(_loc6_ || _loc1_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §;"F§.push(§1!r§);
                                                      loop36:
                                                      while(true)
                                                      {
                                                         §>!E§.§7N§("Hiscore_Star_Splash1",§ A§);
                                                         loop37:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  §§goto(addr437);
                                                               }
                                                               addr53:
                                                               return;
                                                               addr57:
                                                            }
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §6w§.getItemByName("Button_Share_Crown").setVisibility(false);
                                                                     while(!(_loc6_ || _loc1_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §>!E§.§7N§("Hiscore_Star_Splash1",§ A§);
                                                                                 addr347:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr444);
                                                                              }
                                                                              §§goto(addr57);
                                                                           }
                                                                           §§goto(addr423);
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                     addr305:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr484:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§%"1§));
                                                                  }
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§4!=§ = "crown";
                                                                                 §§goto(addr480);
                                                                              }
                                                                              addr477:
                                                                           }
                                                                           else
                                                                           {
                                                                              if(!§^z§)
                                                                              {
                                                                                 this.§4!=§ = "";
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop37;
                                                                                    loop33:
                                                                                    while(_loc6_ || _loc2_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §6w§.getItemByName("Button_Share_ME").setVisibility(false);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc6_ || _loc3_))
                                                                                             {
                                                                                                continue loop33;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             addr243:
                                                                                             while(true)
                                                                                             {
                                                                                                §1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc3_,_loc4_,§'!T§.§>^§,20);
                                                                                                while(true)
                                                                                                {
                                                                                                   §6w§.addChild(§1!r§);
                                                                                                   continue loop7;
                                                                                                   addr137:
                                                                                                   if(!(_loc6_ || _loc3_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §6w§.getItemByName("Button_Share_Crown").setVisibility(false);
                                                                                                   loop32:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc6_ || _loc1_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §6w§.getItemByName("Button_Share_Stars").setVisibility(false);
                                                                                                               continue loop33;
                                                                                                            }
                                                                                                            addr371:
                                                                                                            while(_loc6_)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §;"F§.push(§1!r§);
                                                                                                                  §§goto(addr352);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr488:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     §§goto(addr489);
                                                                                                                  }
                                                                                                                  addr489:
                                                                                                                  addr488:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc1_ == 1);
                                                                                                                  if(_loc6_ || _loc1_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  §§goto(addr488);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr430);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      addr135:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop36;
                                                                                                         }
                                                                                                         §§goto(addr137);
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      §§goto(addr437);
                                                                                                   }
                                                                                                   §§goto(addr347);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                 }
                                                                                 continue loop37;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       addr338:
                                                                                       this.§4!=§ = "stars";
                                                                                       while(true)
                                                                                       {
                                                                                          §6w§.getItemByName("Button_Share_Default").setVisibility(false);
                                                                                          continue loop9;
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                       addr341:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr416);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr390:
                                                                           while(true)
                                                                           {
                                                                              §6w§.addChild(§1!r§);
                                                                              §§goto(addr371);
                                                                           }
                                                                        }
                                                                        §§goto(addr57);
                                                                        addr475:
                                                                     }
                                                                     §§goto(addr488);
                                                                  }
                                                               }
                                                               §§goto(addr477);
                                                            }
                                                         }
                                                      }
                                                      addr182:
                                                   }
                                                   §§goto(addr341);
                                                }
                                             }
                                             continue;
                                          }
                                          loop25:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             addr403:
                                             while(true)
                                             {
                                                §1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc3_,_loc4_,§'!T§.§>^§,20);
                                                §§goto(addr390);
                                                continue loop25;
                                             }
                                             §§goto(addr488);
                                          }
                                       }
                                    }
                                    §§goto(addr305);
                                 }
                              }
                              §§goto(addr329);
                           }
                        }
                        §§goto(addr53);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr80);
               }
               §§goto(addr484);
            }
            §§goto(addr53);
         }
         §§goto(addr182);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 490
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override public function getMenuButtonTargetState() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:§>x§ = LevelManager.§9"D§();
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc2_.name);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§]!K§.§"!x§);
               loop0:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(_loc2_.name);
                     loop1:
                     while(true)
                     {
                        §§push(§]!K§.§9a§);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
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
                                       §§push(_loc2_.name);
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(§]!K§.EPISODE_GREEN_DAY_EGG);
                                             if(_loc4_ && _loc3_)
                                             {
                                                break;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(_loc4_)
                                             {
                                                continue loop4;
                                             }
                                             if(_loc4_ && _loc2_)
                                             {
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(§1!J§.STATE_NAME);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop7:
                                                            while(true)
                                                            {
                                                               _loc1_ = §§pop();
                                                               addr152:
                                                               loop8:
                                                               while(!(_loc4_ && _loc3_))
                                                               {
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     if(§§pop() == null)
                                                                     {
                                                                        §§push(§8"D§.STATE_NAME);
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              break loop9;
                                                                           }
                                                                           addr76:
                                                                        }
                                                                        break;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           addr59:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 addr101:
                                                                                 return §§pop();
                                                                              }
                                                                           }
                                                                        }
                                                                        addr41:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§9!X§.STATE_NAME);
                                                                        }
                                                                        addr194:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr197:
                                                                        while(true)
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        break loop7;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr150:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr31);
                                                      }
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr31);
                                             }
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr150);
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr137);
                           }
                        }
                     }
                  }
                  §§goto(addr194);
               }
            }
            §§goto(addr197);
         }
         §§goto(addr41);
      }
      
      protected function onUserProgressSaved(param1:UserProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (AngryBirdsFP11.sUserProgress as §[<§).removeEventListener(UserProgressEvent.§+!f§,this.onUserProgressSaved);
            loop0:
            while(true)
            {
               §§push(this.§?"9§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr94:
                        this.§?"9§.close();
                        loop4:
                        while(true)
                        {
                           this.§?"9§ = null;
                           addr81:
                           addr83:
                           while(_loc3_)
                           {
                              continue loop4;
                           }
                        }
                        addr95:
                     }
                     §§goto(addr95);
                  }
                  while(true)
                  {
                     this.uiInteractionHandler(-1,this.§-!s§,null);
                     while(!(_loc3_ && _loc2_))
                     {
                        continue loop0;
                        this.§-!s§ = null;
                        if(!(_loc3_ && _loc3_))
                        {
                           return;
                        }
                     }
                     §§goto(addr81);
                     §§goto(addr83);
                  }
               }
               §§goto(addr94);
            }
         }
         §§goto(addr94);
      }
      
      private function §1J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6w§.getItemByName("Button_Unlocked_Bronze").setVisibility(false);
            while(true)
            {
               §6w§.getItemByName("Button_Unlocked_Silver").setVisibility(false);
               while(!(_loc2_ && this))
               {
                  §6w§.getItemByName("Button_Unlocked_Gold").setVisibility(false);
                  loop2:
                  while(!(_loc2_ && this))
                  {
                     while(true)
                     {
                        §6w§.getItemByName("Button_Unlocked_Diamond").setVisibility(false);
                        if(_loc1_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      protected function saveLevelProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            (§#6§.§ q§ as §3T§).newUserScore(LevelManager.§'!O§);
            do
            {
               (AngryBirdsFP11.sUserProgress as §[<§).saveLevelProgress(LevelManager.§'!O§);
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:§^!D§ = null;
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc7_ && _loc2_))
         {
            super.setScoreData();
            loop0:
            while(true)
            {
               addr56:
               while(true)
               {
                  if(§%"1§)
                  {
                     while(_loc6_)
                     {
                        this.saveLevelProgress();
                        while(true)
                        {
                        }
                     }
                     continue loop0;
                     addr59:
                  }
                  while(true)
                  {
                     (§#6§.§ q§ as §3T§).§9!Q§.§`W§ = false;
                     if(!_loc7_)
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           break;
                        }
                        §§goto(addr59);
                     }
                     §§goto(addr63);
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr56);
         }
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(_loc6_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && _loc2_))
         {
            if(_loc2_ > _loc1_)
            {
               if(!(_loc7_ && _loc3_))
               {
                  §§push(§%!0§.§&;§(_loc1_,_loc2_));
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc6_ || _loc1_)
                     {
                        addr110:
                        _loc3_ = §§pop();
                        addr120:
                        if(!(_loc7_ && _loc1_))
                        {
                           §§push(_loc3_);
                        }
                        var _loc5_:* = _loc3_;
                        if(_loc6_ || this)
                        {
                           §§push("B20007");
                           if(_loc6_ || this)
                           {
                              §§push(_loc5_);
                              if(_loc6_ || this)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(0);
                                       if(_loc7_)
                                       {
                                          addr260:
                                       }
                                    }
                                    else
                                    {
                                       addr257:
                                       §§push(3);
                                       if(_loc6_)
                                       {
                                          §§goto(addr260);
                                       }
                                    }
                                    §§goto(addr265);
                                 }
                                 else
                                 {
                                    §§push("B20008");
                                    if(!_loc7_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc6_)
                                       {
                                          addr214:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(1);
                                                if(_loc7_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr235:
                                                §§push(2);
                                                if(!(_loc6_ || _loc2_))
                                                {
                                                   §§goto(addr260);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push("B20009");
                                             if(!(_loc7_ && _loc1_))
                                             {
                                                addr229:
                                                §§push(_loc5_);
                                                if(_loc6_)
                                                {
                                                   addr232:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr235);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr257);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr255:
                                                      §§push("B20010");
                                                      §§push(_loc5_);
                                                   }
                                                   §§goto(addr257);
                                                }
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr257);
                                                }
                                                else
                                                {
                                                   addr265:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         _loc4_ = §6w§.getItemByName("Button_Unlocked_Bronze") as §^!D§;
                                                         if(!_loc7_)
                                                         {
                                                            addr267:
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  _loc4_.setVisibility(true);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §[!3§ = true;
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         break;
                                                      case 1:
                                                         _loc4_ = §6w§.getItemByName("Button_Unlocked_Silver") as §^!D§;
                                                         §§goto(addr267);
                                                      case 2:
                                                         _loc4_ = §6w§.getItemByName("Button_Unlocked_Gold") as §^!D§;
                                                         §§goto(addr267);
                                                      case 3:
                                                         _loc4_ = §6w§.getItemByName("Button_Unlocked_Diamond") as §^!D§;
                                                         §§goto(addr267);
                                                      default:
                                                         §§goto(addr267);
                                                   }
                                                   return;
                                                   §§push(4);
                                                }
                                                §§goto(addr265);
                                             }
                                             §§goto(addr255);
                                          }
                                          §§goto(addr265);
                                       }
                                       §§goto(addr232);
                                    }
                                    §§goto(addr229);
                                 }
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr257);
                     }
                     if(§§pop())
                     {
                        §§goto(addr120);
                     }
                     §§goto(addr265);
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr265);
         }
         §§goto(addr110);
      }
   }
}
